#!/bin/bash

# parse arguments
while [[ $# > 1 ]]
do
key="$1"

case $key in
	-p|--port)
	PORT="$2"
	shift # past argument
	;;
    -h|--hostfile)
    HOSTFILENAME="$2"
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

#echo PORT       = "${PORT}"
#echo HOSTFILE   = "${HOSTFILENAME}"

exec java Leader -p ${PORT} -h ${HOSTFILENAME}
