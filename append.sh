

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


