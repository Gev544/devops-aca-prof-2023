#!/bin/bash

#aws caller is taking aws cli command as an argument, doing error handling and returning the output as variable $output

aws_caller() {
          for i in {1..5}
         do
	  output=$(eval $1 2>&1)
	  if [[ $? != 0 ]]
	    then
	      if [[ $output = *timeout* ]]
		then
                  echo "will try again in 5 seconds"
		  sleep 5
	      fi
	  else break
            fi
	   done
}	  
