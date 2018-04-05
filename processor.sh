
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




