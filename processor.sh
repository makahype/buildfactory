
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






