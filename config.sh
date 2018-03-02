#!/bin/bash

BF_RSC_FLDR=$PWD"/../superbot/src"


#if you need to add subfolders to your resource build
declare -a BF_BLD_LAYERS
BF_BLD_LAYERS[0]="testing"



#folders for endpoint files
BF_ED_JS=$BF_RSC_FLDR"/.."
BF_ED_CSS=""

#enpoints to create from your javascript processed resources
declare -a BF_BLD_ROUTE_JSFILES
declare -a BF_BLD_ROUTE_JSEND
<<<<<<< HEAD
BF_BLD_ROUTE_JSFILES[0]="utility-min.js handler-min.js manager-min.js sender-min.js glbobj-min.js"
=======
BF_BLD_ROUTE_JSFILES[0]="handler-min.js manager-min.js sender-min.js utility-min.js"
>>>>>>> 41e5e5f9dca9f5b6bdf2c380756b59b2835e4618
BF_BLD_ROUTE_JSEND[0]="sb.js"

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





#move results to output

cd css
mv *-min.css $BF_DIR/output/css/

#move sublayers
for layer in "${BF_BLD_LAYERS[@]}";
do
    mv ./$layer/*-min.css $BF_DIR/output/css/$layer
done


cd ../js
mv *-min.js $BF_DIR/output/js/

#move sublayers
for layer in "${BF_BLD_LAYERS[@]}";
do
    mv ./$layer/*-min.js $BF_DIR/output/js/$layer
done


cd $BF_DIR



##========================



#js files 
cd output/js
count=0
while [ "tested${BF_BLD_ROUTE_JSFILES[count]}" != "tested" ]
do
    cat  ${BF_BLD_ROUTE_JSFILES[count]} > $BF_ED_JS/${BF_BLD_ROUTE_JSEND[count]}

    count=$(( $count + 1 ))
done



#css files 
cd output/css
count=0
while [ "tested${BF_BLD_ROUTE_CSSFILES[count]}" != "tested" ]
do
    cat  ${BF_BLD_ROUTE_CSSFILES[count]} > $BF_ED_CSS/${BF_BLD_ROUTE_CSSEND[count]}

    count=$(( $count + 1 ))
done


