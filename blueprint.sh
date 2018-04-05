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







##========================



#directory we are calling from
BF_DIR=$PWD


#cleanup old output
rm -r output/css/*
rm -r output/js/*

#make foders that have been deleted
for layer in "${BF_BLD_LAYERS[@]}";
do
    mkdir output/css/$layer
    mkdir output/js/$layer    
done



#move back to source folder
cd $BF_RSC_FLDR


#minify js and css files
java -jar $BF_DIR/yuicompressor-2.4.8.jar css/*.css -o '.css$:-min.css'
java -jar $BF_DIR/yuicompressor-2.4.8.jar js/*.js -o '.js$:-min.js'



for layer in "${BF_BLD_LAYERS[@]}";
do
    java -jar $BF_DIR/yuicompressor-2.4.8.jar css/$layer/*.css -o '.css$:-min.css'
    java -jar $BF_DIR/yuicompressor-2.4.8.jar js/$layer/*.js -o '.js$:-min.js'
done






##========================


#js files
cd $BF_ED_JS
count=0
while [ "tested${BF_BLD_ROUTE_JSFILES[count]}" != "tested" ]
do
    cat  ${BF_BLD_ROUTE_JSFILES[count]} > $BF_ED_JS/${BF_BLD_ROUTE_JSEND[count]}

    count=$(( $count + 1 ))
done


#css files 
cd $BF_ED_CSS
count=0
while [ "tested${BF_BLD_ROUTE_CSSFILES[count]}" != "tested" ]
do
    cat  ${BF_BLD_ROUTE_CSSFILES[count]} > $BF_ED_CSS/${BF_BLD_ROUTE_CSSEND[count]}

    count=$(( $count + 1 ))
done


