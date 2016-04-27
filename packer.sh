#!/bin/bash

## Obtain the source AMI to use for our Packer build.
## ubuntu/images/hvm/ubuntu-trusty-14.04-amd64-server-20160406
base_ami_id='ami-6077f713'

## Build an AMI for this cookbook
$(which chef) exec rake packer[$base_ami_id]