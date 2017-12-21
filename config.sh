#!/bin/bash

BF_RSC_FLDR = "";


#if you need to add subfolders to your resource build
declare -a BF_BLD_LAYERS
#BF_BLD_LAYERS = (layer1, layer2 , layer3)



#folders for endpoint files
BF_ED_JS = "";
BF_ED_CSS = "";

#enpoints to create from your javascript processed resources
declare -a BF_BLD_ROUTE_JSFILES
declare -a BF_BLD_ROUTE_JSEND
#BF_BLD_ROUTES[] = "test"


#enpoints to create from your css processed resources
declare -a BF_BLD_ROUTE_CSSFILES
declare -a BF_BLD_ROUTE_CSSEND
#BF_BLD_ROUTES[] = "test"
