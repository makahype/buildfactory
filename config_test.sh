#!/bin/bash

BF_RSC_FLDR=$PWD"path to source outside of build factory folder"


#if you need to add subfolders to your resource build
declare -a BF_BLD_LAYERS
BF_BLD_LAYERS[0]="common"


#folders for endpoint files
BF_ED_JS=$BF_RSC_FLDR"/js"
BF_ED_CSS=$BF_RSC_FLDR"/css"

#enpoints to create from your javascript processed resources
declare -a BF_BLD_ROUTE_JSFILES
declare -a BF_BLD_ROUTE_JSEND

#here if we had a file common/common.js and page1.js in our source folder there minified files would have -min at the end
BF_BLD_ROUTE_JSFILES[0]="common/common-min.js page1-min.js"

#after appending make the end result become page1.js in the correct folder, relative to the source folder
BF_BLD_ROUTE_JSEND[0]="../../page1.js"

#enpoints to create from your css processed resources
declare -a BF_BLD_ROUTE_CSSFILES
declare -a BF_BLD_ROUTE_CSSEND

BF_BLD_ROUTE_CSSFILES[0]="common/common-min.css common/buttons-min.css page1-min.css"
BF_BLD_ROUTE_CSSEND[0]="../../page1.css"





