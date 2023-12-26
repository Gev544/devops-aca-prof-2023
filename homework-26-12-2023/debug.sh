#!/bin/bash

# Function error handling
aws_run() {
     command="$1"\

     
    
    eval "$command"
    
    
    if [ $? -eq 0 ]; then
        echo "command executed successfully."
    else
        echo "Error:  command failed."
        exit 1
    fi
}

