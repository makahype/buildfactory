#!/bin/bash

BF_RSC_FLDR=$PWD"/../superbot/src"


#if you need to add subfolders to your resource build
declare -a BF_BLD_LAYERS
BF_BLD_LAYERS[0]="testing"



#folders for endpoint files
BF_ED_JS=$BF_RSC_FLDR"/js"
BF_ED_CSS=""

#enpoints to create from your javascript processed resources
declare -a BF_BLD_ROUTE_JSFILES
declare -a BF_BLD_ROUTE_JSEND

BF_BLD_ROUTE_JSFILES[0]="utility-min.js handler-min.js manager-min.js sender-min.js glbobj-min.js"

BF_BLD_ROUTE_JSEND[0]="../../sb.js"

#enpoints to create from your css processed resources
declare -a BF_BLD_ROUTE_CSSFILES
declare -a BF_BLD_ROUTE_CSSEND
#BF_BLD_ROUTES[]="test"






