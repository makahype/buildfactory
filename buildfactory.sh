#!/bin/bash

#create factory
cat config.sh processor.sh append.sh > blueprint.sh

chmod 777 blueprint.sh
./blueprint.sh
