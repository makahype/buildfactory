
##========================





#directory we are calling from
BF_DIR=$PWD


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




