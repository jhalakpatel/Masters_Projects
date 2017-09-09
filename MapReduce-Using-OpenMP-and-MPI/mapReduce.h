//##################################################################
//
//	Written By: Ankit Kulshreshta and Jhalak Patel
//
//	Project: ECE 563 Programming Parallel Machines
//
//#################################################################


#include<iostream>
#include<vector>
#include<string.h>
#include<stdlib.h>
#include<stdio.h>
#include<dirent.h>
#include<fstream>
#include <unordered_map>
#include<algorithm>

using namespace std;

typedef struct cdata
{
	char word[50];
	int value;
	
	cdata()
	{
		value = 0;
	}
	
	
	
} cDATA;

typedef struct data
{
	string word;
	int value;
	
	data()
	{
		
		value = 0;
		word = "***";
	}
} DATA;

class mapReduce{
	public:
	mapReduce(){};
	void populateFileVector(string filePath);
	void printQ(vector<cDATA> printQueue);
	void printMap(unordered_map<string,int> myMap);
	bool workIsDone(int *, int , int );
	int hashFunc(string str, int numOfReducer);
	unordered_map<string,int> myReduceFunc(vector<DATA> reducerQ);
	list<DATA> *readQ;
	vector<cDATA> *reducerVec;
	unordered_map<string,int> *mapperQ;
	unordered_map<string, int> *reducerMap;
	void fileRead(string fileName,int tid);
	vector<DATA> fileNameQ;
};

