

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

