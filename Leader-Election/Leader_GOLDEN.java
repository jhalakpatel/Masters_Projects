import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.nio.ByteBuffer;
import java.net.SocketTimeoutException;
import java.util.HashSet;
import java.util.HashMap;

class Option {
	String flag, opt;

	public Option(String flag, String opt) {
		this.flag = flag;
		this.opt = opt;
	}
}

public class Leader {

	/* class variables */
	private static int port;
	private static int maxCrashes;
	private static int processId;
    private static int leaderId;
    private static int numCrashesPerElection;
    private static int correctNodes;
    private static boolean iAmLeader;
    private static byte hostValue;
    private static Path hostFilePath;
	private static String localHostName;
    private static String presentLeaderName;
    private static int correctArrayLength;
    
    private static Integer[] hostIdArray;
    private static String[] hostNameArray;
	private static List<String> hostNameList;
	
	/* socket related variables */
    private static byte[] buf;
	private static DatagramSocket socket;
    private static DatagramPacket packet;
    private static InetAddress localHost;
    private static InetAddress addressOfLeader;
   
    /* timing related variables */
    private static long delayTime;
    private static long currTime;
    private static long endTime;
    private static long runLeaderTime;
    private static int pingpongTimeOut;

    private static HashSet<String>  uniqueAddressName = new HashSet<String>();
    private static HashSet<Integer> uniqueValueSet = new HashSet<Integer>();
    private static HashMap<Integer, Integer> pidToArrIndexmap = new HashMap<Integer, Integer>();

    public static void main(String[] args) throws IllegalAccessException, IOException {

		List<Option> optionList = new ArrayList<Option>();
        
        // sanity check on the argument list
		for (int i = 0; i < args.length; i++) {
			switch (args[i].charAt(0)) {
			case '-':
				if (args[i].length() < 2)
					throw new IllegalAccessException("Not a valid arguement : " + args[i]);

				if (args.length - 1 == i)
					throw new IllegalAccessException("Expected arguements after : " + args[i]);

				optionList.add(new Option(args[i], args[i + 1]));
				i++;
				break;

			default:
				throw new IllegalAccessException("Illegal arguments " + args[i]);
			}
		}

		/* parse the options */
		for (int i = 0; i < optionList.size(); i++) {
			Option currOption = optionList.get(i);
			switch (currOption.flag) {
			case "-p":
				port = Integer.parseInt(currOption.opt);
				//System.out.println("port : " + port);
				break;
			case "-h":
				hostFilePath = Paths.get(currOption.opt);
				//System.out.println("hostfile : " + hostFilePath);
				break;
            case "-f":
				maxCrashes = Integer.parseInt(currOption.opt);
				//System.out.println("maxCrashes : " + maxCrashes);
				break;
			default:
				System.out.println("Incorrect Options...");
			}
		}

        /* Variable Initialization */
        byte[] pValueArray = new byte[4];
        buf = new byte[256];
        iAmLeader = false;
        
        /* Timing Variable Initializations - All are in milliseconds */
        runLeaderTime = 10000000;
        pingpongTimeOut = 1000;

        /* Socket Initialization */
        socket = new DatagramSocket(port);
        packet = new DatagramPacket(buf, buf.length);

		// get the process id
		localHost = java.net.InetAddress.getLocalHost();
		localHostName = localHost.getHostName();

        System.out.println("address :"+localHost);

		System.out.println();

        // read host file
		try {
			Charset charset = Charset.forName("ISO-8859-1");
			hostNameList = Files.readAllLines(hostFilePath, charset);
			hostNameArray = new String[hostNameList.size()];
            hostIdArray = new Integer[hostNameList.size()];
			String[] tempArray = new String[2];
			int i = 0;
		
            for (String host : hostNameList) {
				tempArray = host.split("\\s+");
                
                // store host information
                hostIdArray[i] = Integer.parseInt(tempArray[0]); 
				hostNameArray[i] = tempArray[1];
                
                // map the process ID with the array index
                pidToArrIndexmap.put(hostIdArray[i], i); 

                if (localHostName.equals(hostNameArray[i])) {

                    // store the process Id of the parent node
                    processId = Integer.parseInt(tempArray[0]);

                    // logic to covert int to a byte and store it
				    ByteBuffer b = ByteBuffer.allocate(4);
                    b.putInt(processId);
                    pValueArray = b.array();
                    
                    // update the host value
                    hostValue = pValueArray[3];    // store in different format, big endian? little endian ?
                    //System.out.println("proposed value : "+temp +" byte array :"+pValueArray[3]);
				}

                i++;
                //System.out.println("host[" + i + "] - " + hostNameArray[i]);
			}
		} catch (IOException e) {
			System.out.println(e);
		}

        // update the correct node data structures
        correctArrayLength = hostNameArray.length;
        correctNodes = correctArrayLength;

        System.out.println("[SYNCHRONIZING] "+localHostName+" @ "+ System.currentTimeMillis());
        synchronizeNodes();
        
        //System.out.println("[RE-SYNCHRONIZING] "+localHostName+" @ "+ System.currentTimeMillis());
        //synchronizeNodes();
        
        //System.out.println("[FINAL-SYNCHRONIZING] "+localHostName+" @ "+ System.currentTimeMillis());
        //synchronizeNodes();
       
        System.out.println("[PARTICIPATING] "+localHostName+" @ "+ System.currentTimeMillis());
        
        // call leader election for the first time
        //System.out.println("Calling Leader Election for the first time on : "+ localHostName +" with value : " + hostValue);
        
        leaderId = leaderElection(); 
        
        //System.out.println("[DECISION] Decided Leader for the first time on : "+ localHostName +" with value : " + leaderId);

        if (processId == leaderId) {
            System.out.println();
            //System.out.println("------------------------------------------------------------------");            
            //System.out.println("I am the leader : "+ localHostName);
            //System.out.println("------------------------------------------------------------------");            
            iAmLeader = true;
        } else {
            //System.out.println();
            //System.out.println("------------------------------------------------------------------");            
            //System.out.println("I am the follower : "+ localHostName);
            //System.out.println("------------------------------------------------------------------");            
            iAmLeader = false;
        }

        // get the address of leader
        addressOfLeader = InetAddress.getByName(hostNameArray[pidToArrIndexmap.get(leaderId)]);
        
 		System.out.println("[PROPOSED NEW-LEADER-->"+leaderId+" with address--"+addressOfLeader+"] @ "+ localHostName);
        //System.out.println("address of leader : "+addressOfLeader);

        clearSocket();

        while(true) {
            if (iAmLeader == false) {
                // delay of some time before checking that the leader status
                try {
                    Thread.sleep(100);
                } catch(InterruptedException ex) {
                
                }
                
                if (leaderHasFailed() == true) {
                 
                    clearSocket();

                    try {
                        Thread.sleep(100);
                    } catch(InterruptedException ex) {
                    
                    }

 		            //System.out.println("[RE-ELECTION-->"+hostValue+ "by : "+localHostName+" @ "+System.currentTimeMillis());

                    // when leader is killed, update the max crashes, correct Nodes and other data structures
                    correctNodes--;
                    numCrashesPerElection = 0;
					correctArrayLength--;    

                    //System.out.println("[RESYNC STARTED] on "+localHostName);
                    resynchronizeNodes();

                    clearSocket();
                    
                    //System.out.println("[RESYNC DONE] on "+localHostName);

                    leaderId = leaderElection();

                    clearSocket();

 		            //System.out.println("[PROPOSED NEW-LEADER-->"+leaderId+ "localHostName @ "+System.currentTimeMillis());
 		            //System.out.println("[PROPOSED NEW-LEADER-->"+leaderId+"]: "+ localHostName);
                    
                    // let everyone update the new leader address
                    addressOfLeader = InetAddress.getByName(hostNameArray[pidToArrIndexmap.get(leaderId)]);
                    
 		            System.out.println("[PROPOSED NEW-LEADER-->"+leaderId+" with address--"+addressOfLeader+"] @ "+ localHostName);
                    
                    if (processId == leaderId) {
                        // I am the new leader, exit the while(true) loop
                        iAmLeader = true;
                        // give some buffer for everyone to decide the leader
                        //try {
                        //    Thread.sleep(100);
                        //} catch(InterruptedException ex) {
                
                        //}
                        break;
                    }
                }

            } else {
                // I am the leader, will exit the while(true) loop
                break;
            }
        }

        // I will come here only if I am the leader
        if (iAmLeader == true) {                // redundant condition, but makes things more clear and makes me happy
         
            packet = new DatagramPacket(buf,buf.length);

 		    System.out.println("[LEADER-->"+hostValue+"]: "+ localHostName);
            currTime = System.currentTimeMillis();
            endTime = currTime + runLeaderTime;
            
            // I will be leader for some fixed time i.e. runLeaderTime, after that i will crash
            while(currTime < endTime) {

                // set the timeout time for the socket to receive
                socket.setSoTimeout(1);   

                while(true) {   // try to receiev data from the leader until timeout
                    try {
                        socket.receive(packet);
                        //System.out.println("Leader "+localHostName+" received packet");
                        break;       
                    }
                    catch (SocketTimeoutException e) {
                        // timeout exception is called
                        //System.out.println("Leader "+localHostName+" Not able to receive packet, keep trying");
                        break;
                    }
                }

                // extract the sender information from the packet
		        InetAddress addressOfSender = packet.getAddress();
                int senderPort = packet.getPort();

                //System.out.println(localHostName +" leader receiving from :"+addressOfSender.getHostName());

		        // create the packet : bind it with the address and port
		        packet = new DatagramPacket(buf, buf.length, addressOfSender, senderPort);

                // send the packet back to the same node
                socket.send(packet);

                // update the current time
                //currTime = System.currentTimeMillis();
            }

            // leader is killed when the code comes here
            System.out.println("[KILLED LEADER-->"+hostValue+"]: "+ localHostName);
            System.out.println();
            // close the socket
            socket.close();

            System.exit(0);
        }
    }

    public static boolean wrongleaderHasFailed() throws IOException{

        int j;
        int tryCount = 0;
        boolean flag = true;        // assume leader has failed initially
        // create packet to ping to the leader address and port
        packet = new DatagramPacket(buf, buf.length, addressOfLeader, port);
       
        // send the ping pong packet
		socket.send(packet);
            
        // set the timeout time for the socket to receive
        socket.setSoTimeout(100);   

        while(true) {   // try to receiev data from the leader until timeout
            try {
                socket.receive(packet);

                // check it the packet is from the leader
                InetAddress address = packet.getAddress();
                String nameOfAddress = address.getHostName();
                String leaderName    = addressOfLeader.getHostName();
                    
                if (nameOfAddress.equals(leaderName)) {
                    //System.out.println(localHostName+" receive packet from the leader");
                    return false;
                }
            }
             catch (SocketTimeoutException e) {
                // timeout exception is called
                //System.out.println(localHostName+" Not able to receive packet from the leader");
                return true; 
           }
        }
    }

    public static boolean leaderHasFailed() throws IOException{

        int j;
        int tryCount = 0;
        boolean flag = true;        // assume leader has failed initially
        // create packet to ping to the leader address and port
        packet = new DatagramPacket(buf, buf.length, addressOfLeader, port);
       
        while(true) {

            // send the ping pong packet
		    socket.send(packet);
            
            // set the timeout time for the socket to receive
            socket.setSoTimeout(100);   

            while(true) {   // try to receiev data from the leader until timeout
                try {
                    socket.receive(packet);
                    //System.out.println(localHostName+" receive packet from the leader");
                    InetAddress address = packet.getAddress();
                    String nameOfAddress = address.getHostName();
                    String leaderName    = addressOfLeader.getHostName();

                    //System.out.println("address of leader in leaderhasfailed "+nameOfAddress +" with actual address of leader "+leaderName);
                    if (nameOfAddress.equals(leaderName)) {
                        flag = true;
                        //System.out.println(localHostName+" receive packet from the leader");
                        break;  
                    } else {
                        //System.out.println("receiving useless packets from "+nameOfAddress);
                        tryCount++;
                        flag = false;
                        break;
                    }
                }
                catch (SocketTimeoutException e) {
                    // timeout exception is called
                    //System.out.println(localHostName+" Not able to receive packet from the leader");
                    tryCount++;
                    flag = false;
                    break;
                }
            }

            if (flag == true) {
                return false;
            } else {
                if (tryCount>100) {
                    //System.out.println(localHostName+" leader has failed");
                    return true;
                }
            }
        }
    }

    public static int leaderElection() throws IOException {

        int leaderId = processId;
        int round = 0;

        //System.out.println("Max Crashes : "+maxCrashes);

        // get the host value to propose in rounds
        buf[0] = hostValue;

        // need total maxCrashes + 1 rounds to reach consensus
        while(round <= maxCrashes) {

            //System.out.println("HOSTNAME: "+localHostName+" | Round: "+round +" | leader ID : "+leaderId+" | with host value : "+hostValue);

            // send value to all the nodes
            propose(buf);

            // receive value from all the nodes
            leaderId = receive();

            //System.out.println("HOSTNAME: "+localHostName+" | Round: "+round +" | NEW leader ID : "+leaderId+" | with host value : "+hostValue);

            // increment the round
            round++;
        }
        
        // clear the HashSet
        uniqueValueSet.clear();
        
        return leaderId; 
    }

	public static void ping(byte[] buf) throws IOException {

		// send value to all the node
		for (int i = 0; i < hostNameArray.length; i++) {

    		String currHost = hostNameArray[i];
            String localHost = localHostName;

		    // check if the hostname == local host name
		    if (currHost.equals(localHost)) {
                //System.out.println("hostname == local host name");
			    continue;
		    }

		    // get the address of the host name
		    InetAddress address = InetAddress.getByName(hostNameArray[i]);

		    // create the packet : bind it with the address and port
		    packet = new DatagramPacket(buf, buf.length, address, port);

 		    //System.out.println("sending packet from : "+ localHostName +" to " + hostNameArray[i] + " with value : " + hostValue);
		    // send packet
		    socket.send(packet);
        }
    }

	public static void propose(byte[] buf) throws IOException {

		// send value to all the node
		for (int i = 0; i < hostNameArray.length; i++) {

    		String currHost = hostNameArray[i];
            String localHost = localHostName;

		    // check if the hostname == local host name
		    if (currHost.equals(localHost)) {
                //System.out.println("hostname == local host name");
			    continue;
		    }

		    // get the address of the host name
		    InetAddress address = InetAddress.getByName(hostNameArray[i]);

            //System.out.println("address format :"+address);

		    // create the packet : bind it with the address and port
		    packet = new DatagramPacket(buf, buf.length, address, port);

 		    //System.out.println("sending packet from : "+ localHostName +" to " + hostNameArray[i] + " with value : " + hostValue);

		    // send packet
            //
            int j;
            for (j=0; j < 10; j++) {
		        socket.send(packet);
		        try {
                    Thread.sleep(10);
                } catch(InterruptedException ex) {

                }
            }
        }
    }

    public static int receive() throws IOException{

		int timeout = 200;

        // if already received all the correct values no need to do anything else
        if (uniqueValueSet.size() == correctArrayLength) {
            //System.out.println("------------------ "+localHostName+" useful --------------");
            return Collections.max(uniqueValueSet);
        }      
        
        // update the value array with the host process value
        uniqueValueSet.add((int)hostValue);
		
        //System.out.println("host array length***** " +localHostName +"*****" +  hostNameArray.length);
		while(true) {
                // set a simple timeout for single recieve
			    socket.setSoTimeout(timeout);
				//System.out.println(localHostName+" Time Remaining in the round " + timeout);
				try {
					socket.receive(packet);
					// extract the value from the packet received
		            InetAddress address = packet.getAddress();
                    int senderPort = packet.getPort();
                    //System.out.println(localHostName +" receiving from :"+address.getHostName());
                    byte[] byteValueArray = new byte[1];
					byteValueArray = packet.getData();
            
                    uniqueValueSet.add((int)byteValueArray[0]);
            
                    if (uniqueValueSet.size() == correctArrayLength){
                        //System.out.println("=============== "+localHostName +" all unique keys are received from the correct nodes ===============");
                        break;
                    }
				} catch(SocketTimeoutException e) {
					   // it just makes sure that in each round, one incorrect process is identified
                       numCrashesPerElection++;
					   correctArrayLength--;   
                       correctNodes--;
					   // timeout exception.
					   //System.out.println("HostName : "+localHostName +" *********** Number of crashes ["+numCrashesPerElection+"] *********** Correct Array Length : "+correctArrayLength);
                       break;
				}
        }

        return Collections.max(uniqueValueSet);
    }

    public static void synchronizeNodes() throws IOException {
    
        int response = 0;
        
        // send message to all the nodes
        ping(buf);
    
        // wait to receive response from all correct nodes
        while(response < correctNodes-1) {

            //System.out.println("======= "+localHostName+" : received value ========");

            socket.receive(packet);

            response++;
        
            //System.out.println("response : "+response +" < correct nodes :"+correctNodes);
        }
    }
    
    public static void resynchronizeNodes() throws IOException {
   
        boolean flag = false;
        buf[0] = 21;

        int recvCorrectNodes = correctNodes - 1;

        while(true) {

            //System.out.println(localHostName +" sending resync packets to all");

            ping(buf);

			socket.setSoTimeout(10);

            while (true) {
            
                try {
                                  
                    socket.receive(packet);
                    
                    byte[] valRecv = new byte[1];
                    valRecv = packet.getData();

                    InetAddress recvAddress = packet.getAddress();

                    String senderName = recvAddress.getHostName();

                    //System.out.println("i am stuck");

                    if ((int)valRecv[0] == 21) {
                        if (senderName.equals(localHostName)){
                            continue;
                        }

                        if (!(uniqueAddressName.contains(senderName))) {
                            //System.out.println(localHostName +"received from "+senderName);
                            uniqueAddressName.add(senderName);
                        }
                    }

                    if (uniqueAddressName.size() == recvCorrectNodes) {
                        //System.out.println(uniqueAddressName.size() +"=="+recvCorrectNodes);
                        //System.out.println(localHostName +" received from all");
                        uniqueAddressName.clear();
                        flag = true;
                        break;
                    }
                
                } catch (SocketTimeoutException e){
                    //uniqueAddressName.clear();
                    break;
                }
                
            }
            
            if (flag == true) {
                break;
            }
        }
    }

    private static void clearSocket() throws IOException{
        socket.close();
        try {
            Thread.sleep(100);
        } catch(InterruptedException ex) {
                
        }
        
        socket = new DatagramSocket(port);
        packet = new DatagramPacket(buf, buf.length);
    }
}
