#!/bin/bash

#load configuration to be used
./config.sh



BF_DIR = $PWD
#process builds
./process.sh


#prepare for use
./stamp.sh

