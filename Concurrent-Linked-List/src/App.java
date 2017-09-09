import java.util.ArrayList;
import java.util.List;
import java.util.Random;

class Option {
	String flag, opt;

	public Option(String flag, String opt) {
		this.flag = flag;
		this.opt = opt;
	}
}

public class App {

	/* class variables */
	private static int tid;
	private static int intListSize;
	private static int valRange;
	private static int sizeOfList;
	private static int updateRatio;
	private static int numThread;
	private static int executionTime;
	private static String listScheme;
	private static int success;
	private static int failure;
	private static int throughput;

	public static Node createList() {
		Random random = new Random();
		Node head = new Node(Integer.MIN_VALUE);
		Node tail = new Node(Integer.MAX_VALUE);

		Node pred, curr;
		pred = head;
		pred.next = tail;
		curr = pred.next; 
		
		while (sizeOfList < intListSize) {	
			
			pred = head;
			curr = pred.next; 
	
			Node newNode = new Node(random.nextInt(valRange));

			while (curr.key < newNode.key) {
				pred = curr;
				curr = pred.next;
			}
			
			if (curr.key == newNode.key) {
				continue;
			} 
			else {
				pred.next = newNode;
				newNode.next = curr;
				sizeOfList++;			// actually adding an element to the list
			}
		}
		return head;
	}

	public static void printList(Node head) {
		Node curr = head;
		while (curr.key < Integer.MAX_VALUE) {
			System.out.println("list value : " + curr.key);
			curr = curr.next;
		}
	}

	public static void sizeOfList(Node head) {
		Node curr = head;
		while (curr.key < Integer.MAX_VALUE) {
			curr = curr.next;
			sizeOfList++;
		}
	}

	public static synchronized void success() {
		success++;
	}

	public static synchronized void failure() {
		failure++;
	}

	public static void main(String[] args) throws IllegalAccessException {

		List<Option> optionList = new ArrayList<Option>();

		IntSet coarseList = new CoarseList();
		IntSet hoHList = new HoHList();
		IntSet optList = new OptList();

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
			case "-t":
				numThread = Integer.parseInt(currOption.opt);
				break;
			case "-d":
				executionTime = Integer.parseInt(currOption.opt);
				break;
			case "-u":
				updateRatio = Integer.parseInt(currOption.opt);
				break;
			case "-i":
				intListSize = Integer.parseInt(currOption.opt);
				break;
			case "-b":
				listScheme = currOption.opt;
				break;
			default:
				System.out.println("Incorrect Options...");
			}
		}

		/* initialize to initial size of 0 */
		sizeOfList = 0;

		/* set the range of values to be twice the list size */
		valRange = intListSize * 2;

		/* create list */
		Node headOfList = createList();

		/* print list to validate the creation */
		printList(headOfList);
		
		System.out.println("size :"+sizeOfList);
		
		System.out.println();		
		System.out.println("Setting up Thread Environment: ");		
		System.out.println();		

		/* thread environment */
		Thread[] threads = new Thread[numThread];
		for (tid = 0; tid < threads.length; tid++) {
			threads[tid] = new Thread(new Runnable() {
				public void run() {
					Random random = new Random();
					long t = System.currentTimeMillis();
					long end = t + executionTime;
					while (System.currentTimeMillis() < end) {

						if (random.nextInt(100) <= updateRatio) {
							/* update task */
							int val = random.nextInt(2);

							if (val == 0) {
								//System.out.println("thread : " + tid + " inserting");
								switch (listScheme) {
								case "coarse":
									if (coarseList.insert(headOfList, random.nextInt(valRange), end) == true)
										success();
									else {
										failure();
									}
									break;
								case "hoh":
									if (hoHList.insert(headOfList, random.nextInt(valRange), end) == true)
										success();
									else {
										failure();
									}
									break;
								case "optimistic":
									if (optList.insert(headOfList, random.nextInt(valRange), end) == true)
										success();
									else {
										failure();
									}
									break;
								default:
									System.out.println("Error: Incorrect scheme selection");		
								}
							} else {
								//System.out.println("thread : " + tid + " removing");
								switch (listScheme) {
								case "coarse":
									if (coarseList.remove(headOfList, random.nextInt(valRange), end) == true)
										success();
									else {
										failure();
									}
									break;
								case "hoh":
									if (hoHList.remove(headOfList, random.nextInt(valRange), end) == true)
										success();
									else {
										failure();
									}
									break;
								case "optimistic":
									if (optList.remove(headOfList, random.nextInt(valRange), end) == true)
										success();
									else {
										failure();
									}
									break;
								default:
									System.out.println("Error: Incorrect scheme selection");		
								}	
							}
						} else {
							/* contains task */
							//System.out.println("thread : "+ tid + " lookUp");
							switch (listScheme) {
							case "coarse":
								if (coarseList.contains(headOfList, random.nextInt(valRange), end) == true)
									success();
								else {
									failure();
								}
								break;
							case "hoh":
								if (hoHList.contains(headOfList, random.nextInt(valRange), end) == true)
									success();
								else {
									failure();
								}
								break;
							case "optimistic":
								if (optList.contains(headOfList, random.nextInt(valRange), end) == true)
									success();
								else {
									failure();
								}
								break;
							default:
								System.out.println("Error: Incorrect scheme selection");		
							}
						}
					}
				}
			});
			System.out.println("Starting thread : "+ tid);
			threads[tid].start();
		}

	/* barrier to join threads */
	try

	{
		for (tid = 0; tid < threads.length; tid++) {
			threads[tid].join();
		}
	} catch(

	InterruptedException e)

	{
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	/* calculate final size of the list */
	sizeOfList(headOfList);

	System.out.println();
	System.out.println("Successful Execution.");
	System.out.println();
	
	/* Throughput Calculations */
	throughput = (success + failure) / executionTime;
	
	System.out.println("-------------------- INPUT PARAMETERS --------------------");
	System.out.println("Number of Threads  :  "+numThread);
	System.out.println("Execution Time     :  "+executionTime);
	System.out.println("Update Ratio       :  "+updateRatio);
	System.out.println("Initial List Size  :  "+intListSize);
	System.out.println("Scheme             :  "+listScheme);

	System.out.println();

	System.out.println("-------------------- OUTPUT LOG --------------------");
	System.out.println("Size of List   :  " + sizeOfList);
	System.out.println("Total Success  :  " + success);
	System.out.println("Total Failure  :  " + failure);
	System.out.println("Throughput     :  " + throughput);
	
	}
}
