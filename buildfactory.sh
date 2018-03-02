#!/bin/bash

#currently everything in config
./config.sh

#and build with no process
cat ../superbot/src/js/utility.js ../superbot/src/js/handler.js ../superbot/src/js/sender.js ../superbot/src/js/manager.js ../superbot/src/js/glbobj.js > ../superbot/sb_full.js