#!/bin/bash

source debug.sh

command="aws ec2 describe-instances"

aws_run "$command"
