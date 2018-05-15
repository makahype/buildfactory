#!/bin/bash

#if you need to add subfolders to your resource build
declare -a BF_BLD_LAYERS
declare -a BF_BLD_CSS_LAYERS

declare -a BF_BLD_ROUTE_JSFILES
declare -a BF_BLD_ROUTE_JSEND
declare -a BF_BLD_ROUTE_CSSFILES
declare -a BF_BLD_ROUTE_CSSEND



BF_RSC_FLDR=$PWD"/......"
BF_ED_JS=$PWD"/......"
BF_ED_CSS=$PWD"/......"


BF_BLD_LAYERS[0]="folder1"
BF_BLD_CSS_LAYERS[0]="folder2"


BF_BLD_ROUTE_JSFILES[0]=""
BF_BLD_ROUTE_JSEND[0]=""


BF_BLD_ROUTE_CSSFILES[0]=""
BF_BLD_ROUTE_CSSEND[0]=""

