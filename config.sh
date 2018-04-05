#!/bin/bash

#if you need to add subfolders to your resource build
declare -a BF_BLD_LAYERS
declare -a BF_BLD_ROUTE_JSFILES
declare -a BF_BLD_ROUTE_JSEND
declare -a BF_BLD_ROUTE_CSSFILES
declare -a BF_BLD_ROUTE_CSSEND



BF_RSC_FLDR=$PWD"/../frontend/src"
BF_ED_JS="/js"
BF_ED_CSS="/css"


BF_BLD_LAYERS[0]="common"


BF_BLD_ROUTE_JSFILES[0]=""
BF_BLD_ROUTE_JSEND[0]=""


BF_BLD_ROUTE_CSSFILES[0]=""
BF_BLD_ROUTE_CSSEND[0]=""

