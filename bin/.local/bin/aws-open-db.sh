#!/bin/bash

MYIP=$(curl -s https://checkip.amazonaws.com)
IAM=$(whoami)
AT=$(date +'%Y-%m-%d_%H:%M')

if [ -f ~/.local/tmp/${MYIP} ]; then
  aws ec2 authorize-security-group-ingress \
    --group-id sg-0243400bc80d88ec6 \
    --ip-permissions "IpProtocol=tcp,FromPort=5432,ToPort=5432,IpRanges=[{CidrIp=${MYIP}/32,Description='${IAM} - ${AT}'}]" \
    --tag-specifications "ResourceType=security-group-rule,Tags=[{Key=Name,Value=${IAM}}]"

  mkdir -p ~/.local/tmp
  touch ~/.local/tmp/${MYIP}
fi


PGHOST=$(aws ssm get-parameter --name /d4prd/rds/hostname --query Parameter.Value --output text)
PGDB=$(aws ssm get-parameter --name /d4prd/rds/dbname --query Parameter.Value --output text)
PGUSR=$(aws ssm get-parameter --name /d4prd/rds/usr --query Parameter.Value --output text)
PGPWD=$(aws ssm get-parameter --name /d4prd/rds/pwd --query Parameter.Value --output text)

PGPASSWORD=$PGPWD psql -h $PGHOST -U $PGUSR -d $PGDB
