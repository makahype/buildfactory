#!/bin/bash


#cleanup old output
rm -r output/css/*.css
rm -r output/js/*.js

#make foders that have been deleted
for layer in BF_BLD_LAYERS;
do
    mkdir output/css/$layer
    mkdir output/js/$layer    
done



#move back to source folder
cd $BF_RSC_FLDR


#minify js and css files
java -jar $BF_DIR/$BF_YUICMP_SCPT css/*.css -o '.css$:-min.css'
java -jar $BF_DIR/$BF_YUICMP_SCPT js/*.js -o '.js$:-min.js'

java -jar $BF_DIR/$BF_YUICMP_SCPT css/games/*.css -o '.css$:-min.css'
java -jar $BF_DIR/$BF_YUICMP_SCPT js/games/*.js -o '.js$:-min.js'


#move results to output

cd css
mv *-min.css $BF_DIR/output/css/

#move sublayers
for layer in BF_BLD_LAYERS;
do
    mv ./$layer/*-min.css $BF_DIR/output/css/$layer
done


cd ../js
mv *-min.js $BF_DIR/output/js/

#move sublayers
for layer in BF_BLD_LAYERS;
do
    mv ./$layer/*-min.js $BF_DIR/output/js/$layer
done


cd $BF_DIR