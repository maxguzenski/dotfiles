#!/bin/bash

MYIP=$(curl https://checkip.amazonaws.com)/32
IAM=$(whoami)
AT=$(date +'%Y-%m-%d_%H:%M')

aws ec2 authorize-security-group-ingress \
  --group-id sg-0243400bc80d88ec6 \
  --ip-permissions "IpProtocol=tcp,FromPort=5432,ToPort=5432,IpRanges=[{CidrIp=${MYIP},Description='${IAM} - ${AT}'}]" \
  --tag-specifications "ResourceType=security-group-rule,Tags=[{Key=Name,Value=${IAM}}]"

