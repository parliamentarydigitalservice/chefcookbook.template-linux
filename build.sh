#!/bin/bash

## Execute the CI task from the Rakefile
sudo $(which chef) exec rake ci

## Obtain the source AMI to use for our Packer build.
## ubuntu-trusty-14.04-amd64-server-20160114.5
base_ami_id='ami-9abea4fb'

## Build an AMI for this cookbook
$(which chef) exec rake packer[$base_ami_id]