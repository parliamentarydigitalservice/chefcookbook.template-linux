#!/bin/bash

export AWS_REGION=eu-west-1

# Obtain the source AMI to use for our Packer build.
# ubuntu/images/hvm/ubuntu-trusty-14.04-amd64-server-20160406
# base_ami_id=$(aws ec2 describe-images \
#     --filters Name=name,Values="ubuntu/images/hvm/ubuntu-trusty-14.04-amd64-server-20160406" \
#     --region $AWS_REGION \
#     --output text \
#     --query "Images[*].ImageId" \
# )
base_ami_id=ami-6f587e1c

echo $base_ami_id

## Build an AMI for this cookbook
$(which chef) exec rake packer[$base_ami_id]