#!/bin/bash

BF_RSC_FLDR=$PWD"/../superbot/src"


#if you need to add subfolders to your resource build
declare -a BF_BLD_LAYERS
BF_BLD_LAYERS[0]=""



#folders for endpoint files
BF_ED_JS=""
BF_ED_CSS=""

#enpoints to create from your javascript processed resources
declare -a BF_BLD_ROUTE_JSFILES
declare -a BF_BLD_ROUTE_JSEND

BF_BLD_ROUTE_JSFILES[0]=""
BF_BLD_ROUTE_JSEND[0]=""

#enpoints to create from your css processed resources
declare -a BF_BLD_ROUTE_CSSFILES
declare -a BF_BLD_ROUTE_CSSEND






