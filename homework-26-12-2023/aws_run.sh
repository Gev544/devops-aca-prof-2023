#!/bin/bash

source debug.sh

#command="aws ec2 describe-instances"

aws_caller "aws ec2 describe-vpcs --query 'Vpcs[].VpcId' --output text"

vpc_id=$output
echo $vpc_id
