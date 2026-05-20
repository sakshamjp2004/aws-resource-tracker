#!/bin/bash

###########
#Author : Saksham
#Date : 17/05/2026
#Aim : To Manage Resources
###########
##This script will report AWS resource usage
##Version

##debug mode
set -x

##exit when error
set -e

##pipefail
set -o pipefail

##list Ec2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> /home/ubuntu/ResourceTracker

##List s3 buckets
aws s3 ls >> /home/ubuntu/ResourceTracker

##list lambda functions
aws lambda list-functions >> /home/ubuntu/ResourceTracker

##list iam users
aws iam get-user >> /home/ubuntu/ResourceTracker
