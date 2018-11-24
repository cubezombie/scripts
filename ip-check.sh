#!/bin/bash
digopts="+noall +answer"
listfile="$1"

if [ -z $1 ]
	then
	       echo -e "no file provided...exiting"
       		exit 1
	else
		
		for i in $(cat $listfile)
			do
				dig $i ${digopts} | awk 'NR >3'
		done
fi
