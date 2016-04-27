#!/bin/bash

## Execute the CI task from the Rakefile
$(which chef) exec rake cloud
