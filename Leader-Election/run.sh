#!/bin/bash

# parse arguments
while [[ $# > 1 ]]
do
key="$1"

case $key in
    -u|--user)
    USER="$2"
    shift # past argument
    ;;
	-p|--port)
	PORT="$2"
	shift # past argument
	;;
	-f|--maxcrashes)   
    MAXCRASHES="$2"  
    shift # past argument  
    ;;  
    -h|--hostfile)
    HOSTFILE="$2"
    shift # past argument
    ;;
    --default)
    DEFAULT=YES
    ;;
    *)
            # unknown option
    ;;
esac
shift # past argument or value
done

# decide actual number of crashes from the max crashes

if [ "${MAXCRASHES}" \> "0" ]; then
    ACTUALCRASHES=$(( ( RANDOM % ${MAXCRASHES} ) + 1 ))
else 
    ACTUALCRASHES="0"
fi

#echo ""
#echo "---------------------------------Running Parameters--------------------------------"
#echo USER       = "${USER}"
#echo HOSTFILE   = "${HOSTFILE}"
#echo MAXCRASHES = "${MAXCRASHES}"
# decide actual number of crashes from the max crashes
#echo ACTUALCRASHES = "${ACTUALCRASHES}"
#echo "-----------------------------------------------------------------------------------"
#echo ""

# check if fmax <= n -2
NUMNODES=$(wc -l < ${HOSTFILE})
NUMLIMIT=$((${NUMNODES} - 2))

if [ "${MAXCRASHES}" \> "${NUMLIMIT}" ]; then
    echo "Number of Nodes : ${MAXCRASHES} exceeds [${NUMLIMIT}]"
    echo "Killing the program"
    pkill run.sh         # kill the process
fi

TEMPFILE="tempfile.txt"

#shuffle the file to randomize which node to fail
shuf ${HOSTFILE} --output=${TEMPFILE}

ACTUALCRASHES=${MAXCRASHES}

# parse hostfile
while read -r host
do
    read -a hostarray <<< "$host"
    #echo "host name: ${hostarray[1]}"
    #echo "pwd: ${PWD}"
    #if [ "${MAXCRASHES}" \> "0" ]; then 
    #    echo "************************** ${hostarray[1]} : [ABORTING] **************************"
    #    ((MAXCRASHES--))
    #else
        #Run command
        #echo "************************** ${hostarray[1]} : [RUNNING] **************************"
	    ssh -n -f -t -T -l ${USER} ${hostarray[1]} "cd ${PWD}; java Leader -p ${PORT} -h ${HOSTFILE} -f ${ACTUALCRASHES} &" 
    #fi

done < "${TEMPFILE}"

rm -rf ${TEMPFILE}
echo "DONE"
