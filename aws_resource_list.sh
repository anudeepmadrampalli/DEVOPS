#!/bin/bash

############################
# Author: Anudeep Madrampalli
# Date: 4th Nov 2023
#
# Version: v1
#
# This script will report AWS resource usage
############################

set -x

# AWS S3
# AWS EC2
# AWS lambda
# AWS IAM users

# list S3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# list EC2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List AWS lambda functions
echo "Print list of lambda functions"
aws lambda list-functions


# List AWS IAM users
echo "Print list of IAM users"
aws iam list-users
