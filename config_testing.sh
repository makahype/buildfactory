#!/bin/bash

#if you need to add subfolders to your resource build
declare -a BF_BLD_LAYERS
declare -a BF_BLD_CSS_LAYERS

declare -a BF_BLD_ROUTE_JSFILES
declare -a BF_BLD_ROUTE_JSEND
declare -a BF_BLD_ROUTE_CSSFILES
declare -a BF_BLD_ROUTE_CSSEND



BF_RSC_FLDR=$PWD"/testing"
BF_ED_JS=$PWD"/testing/final/js"
BF_ED_CSS=$PWD"/testing/final/css"


#BF_BLD_LAYERS[0]="common"
#BF_BLD_CSS_LAYERS[0]="common"


BF_BLD_ROUTE_JSFILES[0]="test-min.js"
BF_BLD_ROUTE_JSEND[0]="test.js"


BF_BLD_ROUTE_CSSFILES[0]="testing-min.css"
BF_BLD_ROUTE_CSSEND[0]="testing.css"




