#!/bin/bash

#create factory
cat config.sh processor.sh append.sh > blueprint.sh

chmod 777 blueprint.sh
./blueprint.sh

#and build with no process
cat ../superbot/src/js/utility.js ../superbot/src/js/handler.js ../superbot/src/js/sender.js ../superbot/src/js/manager.js ../superbot/src/js/glbobj.js > ../superbot/sb_full.js
