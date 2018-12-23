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


BF_BLD_LAYERS[0]="common"
BF_BLD_CSS_LAYERS[0]="common"


BF_BLD_ROUTE_JSFILES[0]="test-min.js"
BF_BLD_ROUTE_JSEND[0]="test.js"

BF_BLD_ROUTE_JSFILES[1]="common/test-min.js test-min.js"
BF_BLD_ROUTE_JSEND[1]="test-common.js"


BF_BLD_ROUTE_CSSFILES[0]="testing-min.css"
BF_BLD_ROUTE_CSSEND[0]="testing.css"

BF_BLD_ROUTE_CSSFILES[1]="common/subtest-min.css testing-min.css"
BF_BLD_ROUTE_CSSEND[1]="subtest.css"



##========================



#directory we are calling from
BF_DIR=$PWD


#move back to source folder
cd $BF_RSC_FLDR

#clear css folder
rm -r css/*


#make css and js subdirectories
for layer in "${BF_BLD_CSS_LAYERS[@]}";
do
    mkdir css/$layer
done

#run less compiler
for filename in less/*.less; do    
    java -jar $BF_DIR/less4j-1.17.2.jar $filename "css/$(basename "$filename" .less).css"
done


for layer in "${BF_BLD_CSS_LAYERS[@]}";
do
    for filename in less/$layer/*.less; do    
        java -jar $BF_DIR/less4j-1.17.2.jar $filename "css/$layer/$(basename "$filename" .less).css"
    done
done




#minify js and css files
java -jar $BF_DIR/yuicompressor-2.4.8.jar js/*.js -o '.js$:-min.js'

for layer in "${BF_BLD_LAYERS[@]}";
do
    java -jar $BF_DIR/yuicompressor-2.4.8.jar js/$layer/*.js -o '.js$:-min.js'
done


java -jar $BF_DIR/yuicompressor-2.4.8.jar css/*.css -o '.css$:-min.css'
for layer in "${BF_BLD_CSS_LAYERS[@]}";
do
    java -jar $BF_DIR/yuicompressor-2.4.8.jar css/$layer/*.css -o '.css$:-min.css'
done








##========================


#js files
cd $BF_ED_JS
count=0
while [ "tested${BF_BLD_ROUTE_JSFILES[count]}" != "tested" ]
do
    cd  $BF_RSC_FLDR/js/
    cat ${BF_BLD_ROUTE_JSFILES[count]} > $BF_ED_JS/${BF_BLD_ROUTE_JSEND[count]}

    count=$(( $count + 1 ))
done


#css files 
cd $BF_ED_CSS
count=0
while [ "tested${BF_BLD_ROUTE_CSSFILES[count]}" != "tested" ]
do
    cd  $BF_RSC_FLDR/css/
    cat ${BF_BLD_ROUTE_CSSFILES[count]} > $BF_ED_CSS/${BF_BLD_ROUTE_CSSEND[count]}

    count=$(( $count + 1 ))
done


#delete the minified files
cd $BF_RSC_FLDR
rm js/*-min.js

for layer in "${BF_BLD_LAYERS[@]}";
do
    rm js/$layer/*-min.js
done


