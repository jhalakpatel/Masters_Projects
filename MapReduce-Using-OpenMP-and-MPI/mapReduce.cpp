//##################################################################
//
//	Written By: Ankit Kulshreshta and Jhalak Patel
//
//	Project: ECE 563 Programming Parallel Machines
//
//#################################################################

#include<omp.h>
#include<mpi.h>
#include<list>
#include "mapReduce.h"
#include<stddef.h>

int main(int argc, char** argv){
	
	string filePath;
	MPI_Init(&argc,&argv);
	int root_process = 0, rank, size, NUM_THREADS,  workDoneSentCount=0, workSize, totalNodes;
	
	double TotalTime = 0;
	double ReaderMapperTime = 0;
	double ReducerTime = 0;
	
	char allDone[8] = "allDone";
	
	MPI_Comm_rank(MPI_COMM_WORLD,&rank);
	MPI_Comm_size(MPI_COMM_WORLD,&size);
	MPI_Status status;
	
	totalNodes = size;
	
	mapReduce *mapper = new mapReduce;
	
	mapper->reducerVec = new vector<cDATA>[size];
	
	if(argc>1){
		NUM_THREADS = atoi(argv[1]);
		filePath = argv[2];
	}
	else
		cout<<"Specify executable <numThreads> <FilesPath>"<<endl;
	
	
	omp_set_num_threads(NUM_THREADS);
	
	const int nitems = 2;
	int blocklengths[2] = {50,1};
	MPI_Datatype types[2] = {MPI_CHAR, MPI_INT};
	MPI_Datatype mpi_vec_type;
	MPI_Aint offsets[2];
	offsets[0] = offsetof(cDATA, word);
	offsets[1] = offsetof(cDATA, value);
	MPI_Type_create_struct(nitems, blocklengths, offsets, types, &mpi_vec_type);
	MPI_Type_commit(&mpi_vec_type);
	
	int numOfReaderQ = 0, numOfMapperQ = 0;
	int tid, flag;
	omp_lock_t *reducerListLock = new omp_lock_t[size];
	omp_lock_t *reducerMapLock = new omp_lock_t[NUM_THREADS];
	
	omp_lock_t sendRecvLock;
	omp_init_lock(&sendRecvLock);
	
	for (int i=0; i<size; i++)
		omp_init_lock(reducerListLock+i);
	
	for(int i=0; i<NUM_THREADS; i++)
	omp_init_lock(reducerMapLock + i);
	
	if(rank == root_process){
		TotalTime -= MPI_Wtime();
		ReaderMapperTime -= MPI_Wtime();
		numOfReaderQ = (NUM_THREADS-1)/2;
		numOfMapperQ = NUM_THREADS - numOfReaderQ - 1;
		
		int num_get_threads = omp_get_num_threads();
		
		cout<<"num of threads"<<num_get_threads<<endl;
		
		mapper->readQ = new list<DATA>[numOfReaderQ];
		mapper->mapperQ =  new unordered_map<string, int> [numOfMapperQ];
		
		mapper->populateFileVector(filePath);
		omp_lock_t *readQLock = new omp_lock_t[numOfReaderQ];
		omp_lock_t *fileNameQLock = new omp_lock_t[1];
		omp_lock_t *mapReadLock = new omp_lock_t[1];
		
		for(int i = 0; i < numOfReaderQ; i++)
		omp_init_lock(readQLock+i);
		
		
		omp_init_lock(fileNameQLock);
		omp_init_lock(mapReadLock);
		
		int *workDone = new int[numOfReaderQ];
		
		
		#pragma omp parallel num_threads(NUM_THREADS)
		{
			
			num_get_threads = omp_get_num_threads();
			
			int countFiles = 0;
			int tid = omp_get_thread_num();
			if(tid == 0){
				string fileName;
				while(1){
					MPI_Iprobe(MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &flag, &status);
					if(flag == 1){
						if(mapper->fileNameQ.size() == 0){
							MPI_Recv(&workSize, 1, MPI_INT, status.MPI_SOURCE,status.MPI_TAG,MPI_COMM_WORLD, MPI_STATUS_IGNORE);
							MPI_Send(allDone, 7, MPI_CHAR,status.MPI_SOURCE,status.MPI_TAG,MPI_COMM_WORLD);
							workDoneSentCount++;
							if(workDoneSentCount == (totalNodes-1)*NUM_THREADS/2){
								break;
							}
						}
						
						omp_set_lock(fileNameQLock);
						if(mapper->fileNameQ.size() > 0){
							fileName = mapper->fileNameQ.at(0).word;
							mapper->fileNameQ.erase(mapper->fileNameQ.begin());
						}
						else if(mapper->fileNameQ.size() == 0){
							omp_unset_lock(fileNameQLock);
							continue;
						}
						
						omp_unset_lock(fileNameQLock);
						MPI_Recv(&workSize, 1, MPI_INT, status.MPI_SOURCE,status.MPI_TAG,MPI_COMM_WORLD, MPI_STATUS_IGNORE);
						MPI_Send((void*)fileName.c_str(), fileName.size(), MPI_CHAR, status.MPI_SOURCE, status.MPI_TAG, MPI_COMM_WORLD);
					}
				}
			} else {
				
				if(tid < (numOfReaderQ+1)){
					string fileName;
					
					while(1){
						omp_set_lock(fileNameQLock);
						if(mapper->fileNameQ.size() > 0){
							fileName = mapper->fileNameQ.at(0).word;
							mapper->fileNameQ.erase(mapper->fileNameQ.begin());
						}
						else{
							omp_unset_lock(fileNameQLock);
							break;
						}
						omp_unset_lock(fileNameQLock);
						countFiles++;
						mapper->fileRead(fileName,tid-1);
					}
					
					*(workDone+tid-1) = 1;
				}
				else {
					
					int pos = tid%numOfReaderQ;
					
					while(!mapper->workIsDone(workDone, numOfReaderQ, tid)){
						int count = 0;
						omp_set_lock(readQLock+pos);
						while(1){
							if(! mapper->readQ[pos].empty() && count<25){
								(mapper->mapperQ[tid%numOfMapperQ])[mapper->readQ[pos].front().word]++;
								mapper->readQ[pos].pop_front();
								count++;
							}
							else {
								break;
							}
						}
						omp_unset_lock(readQLock+pos);
					}
				}
			}
		}
		
		ReaderMapperTime += MPI_Wtime();
	} else {
		
		TotalTime -= MPI_Wtime();
		ReaderMapperTime -= MPI_Wtime();
		
		numOfReaderQ = (NUM_THREADS/2);
		numOfMapperQ = NUM_THREADS - numOfReaderQ;
		
		mapper->readQ = new list<DATA>[numOfReaderQ];
		mapper->mapperQ =  new unordered_map<string, int> [numOfMapperQ];
		
		int *workDone = new int[numOfReaderQ];
		
		for(int i=0; i<numOfReaderQ; i++)
		workDone[i] = 0;
		
		omp_lock_t *readQLock = new omp_lock_t[numOfReaderQ];
		for(int i = 0; i < numOfReaderQ ; i++)
		omp_init_lock(readQLock + i);
		
		#pragma omp parallel num_threads(NUM_THREADS)
		{
			int tid = omp_get_thread_num();
			if(tid < numOfReaderQ){
				while(1){
					int count = 0;
					int data = 1;
					omp_set_lock(&sendRecvLock);
					MPI_Send(&data,1, MPI_INT, 0, tid, MPI_COMM_WORLD);
					MPI_Probe(0,tid, MPI_COMM_WORLD, &status);
					MPI_Get_count(&status, MPI_CHAR, &count);
					char *fileName = new char [count+1];
					MPI_Recv(fileName, count, MPI_CHAR, 0, tid, MPI_COMM_WORLD,MPI_STATUS_IGNORE);
					omp_unset_lock(&sendRecvLock);
					string str = string(fileName);
					str = str.substr(0,count);
					if(!strcmp((str.substr(0,7)).c_str(), "allDone")){
						*(workDone+tid) = 1;
						break;
					}
					
					mapper->fileRead(str,tid);
					
				}
			}
			else{
				
				int count = 0;
				int pos = tid%numOfReaderQ;
				#pragma omp critical
				while(!mapper->workIsDone(workDone, numOfReaderQ, tid)){
					while(1){
						if(!(mapper->readQ[pos].empty())){
							string tempWord = mapper->readQ[pos].front().word;
							(mapper->mapperQ[pos])[tempWord]++;
							mapper->readQ[pos].pop_front();
							count++;
						}
						else{
							break;
						}
					}
				}
			}
			
		}
		
		ReaderMapperTime += MPI_Wtime();
	}
	
	
	ReducerTime -= MPI_Wtime();
	
	MPI_Barrier(MPI_COMM_WORLD);
	
	#pragma omp parallel num_threads(numOfMapperQ)
	{
		int tid = omp_get_thread_num();
		int listIndex = 0;
		unordered_map<string,int>::iterator mapperItr;
		
		for (mapperItr = mapper->mapperQ[tid].begin(); mapperItr!=mapper->mapperQ[tid].end(); mapperItr++){
			listIndex = mapper->hashFunc(mapperItr->first,size);
			omp_set_lock(reducerListLock+listIndex);
			cDATA temp;
			strcpy(temp.word,mapperItr->first.c_str());
			temp.value = mapperItr->second;
			mapper->reducerVec[listIndex].push_back(temp);
			omp_unset_lock(reducerListLock+listIndex);
		}
		
	}
	
	MPI_Barrier(MPI_COMM_WORLD);
	
	int recvCount;
	for(int i=0; i<size; i++){
		
		if(rank != i){
			MPI_Request request;
			MPI_Status reqStatus;
			MPI_Isend(&(mapper->reducerVec[i][0]), mapper->reducerVec[i].size(), mpi_vec_type, i, 0, MPI_COMM_WORLD, &request );
			MPI_Probe(MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
			MPI_Get_count(&status,mpi_vec_type, &recvCount);
			cDATA* temp = (cDATA*)malloc(sizeof(cDATA)*recvCount);
			MPI_Recv(temp , recvCount, mpi_vec_type, status.MPI_SOURCE, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
			vector<cDATA> tempVec(temp,temp+recvCount);
			mapper->reducerVec[rank].insert(mapper->reducerVec[rank].end(),tempVec.begin(), tempVec.end());
			delete temp;
			MPI_Wait(&request, &reqStatus);
		}
	}
	
	
	mapper->reducerMap = new unordered_map<string,int> [NUM_THREADS];
	#pragma omp parallel num_threads(NUM_THREADS)
	{
		int reducerNum;
		int tid = omp_get_thread_num();
		for(int i=tid; i<mapper->reducerVec[rank].size();i+=NUM_THREADS){
			cDATA *temp = new cDATA;
			string *tempStr = new string;
			*temp = mapper->reducerVec[rank].at(i);
			*tempStr = string(temp->word);
			reducerNum = mapper->hashFunc(*tempStr, NUM_THREADS);
			omp_set_lock(reducerMapLock+reducerNum);
			(mapper->reducerMap[reducerNum])[*tempStr] += (*temp).value;
			omp_unset_lock(reducerMapLock+reducerNum);
		}
		
	}
	
	ReducerTime += MPI_Wtime();
	TotalTime += MPI_Wtime();
	
	MPI_Finalize();
	return 0;
}

void mapReduce::printMap(unordered_map<string,int> currentMap){
	unordered_map<string,int>::iterator mapperItr;
	
	for (mapperItr = currentMap.begin(); mapperItr!=currentMap.end(); mapperItr++){
		cout <<"Key : "<<mapperItr->first<<"	Value :"<<mapperItr->second<<endl;
	}
}

void mapReduce::printQ(vector<cDATA> printQueue){
	for(int i=0;i<printQueue.size();i++){
		cout << "[ Key: " <<printQueue[i].word;
		cout << ", Value: "<< printQueue[i].value <<" ]" << endl;
	}
}


bool mapReduce::workIsDone(int *workDone, int numOfReadQ, int tid){
	
	
	int pos = tid % numOfReadQ;
	if(!readQ[pos].empty())
	return 0;
	
	if(*(workDone+pos) == 0)
	return 0;
	
	if(!readQ[pos].empty())
	return 0;
	
	int myrank;
	MPI_Comm_rank(MPI_COMM_WORLD,&myrank);
	
	printf("Returning 1 workdone: %d for rank : %d pos:%d\n", *(workDone+pos),myrank, pos);
		return 1;
}

int mapReduce::hashFunc(string str, int numOfReducer){
	unsigned int sum = 0;
	for (int j=0;j<str.length();j++){
		sum+= str.at(j);
	}
	
	int reducer = sum%numOfReducer;
	return reducer;
}


void mapReduce::populateFileVector(string dir_path){
	DIR *dir;
	struct dirent *entry;
	
	if((dir = opendir(dir_path.c_str())) != NULL){
		while((entry = readdir(dir)) != NULL){
			DATA fileEntry;
			if ((strcmp(entry->d_name,".")) && (strcmp(entry->d_name,".."))){
				fileEntry.word = dir_path + entry->d_name;
				fileNameQ.push_back(fileEntry);
			}
		}
	} else {
		perror("Directory Does not exists");
		exit(EXIT_FAILURE);
	}
}


void mapReduce::fileRead(string fileName,int tid){
	
	ifstream ifs(fileName.c_str());;
	string word;
	
	while(ifs>>word){
		DATA dataEntry;
		dataEntry.word = word;
		dataEntry.value = 1;
		readQ[tid].push_back(dataEntry);
	}
	
	ifs.close();
}

