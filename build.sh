#!/bin/bash

## Execute the CI task from the Rakefile
sudo $(which chef) exec rake cloud
