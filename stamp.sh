#!/bin/bash




#js files 
cd output/js
count=0
while ["tested${BF_BLD_ROUTE_JSFILES[count]}" != "tested"]
do
    cat  ${BF_BLD_ROUTE_JSFILES[count]} > $BF_ED_JS/${BF_BLD_ROUTE_JSEND[count]}

    let count = count+1
done



#css files 
cd output/css
count=0
while ["tested${BF_BLD_ROUTE_CSSFILES[count]}" != "tested"]
do
    cat  ${BF_BLD_ROUTE_CSSFILES[count]} > $BF_ED_CSS/${BF_BLD_ROUTE_CSSEND[count]}

    let count = count+1
done










#css
cat output/css/common-min.css output/css/front-min.css > ../css/front.css
cat output/css/common-min.css output/css/gnote_edit-min.css vendor/css/icons_rpg_rts_fg.css> ../css/gnote_edit.css
cat output/css/common-min.css output/css/gnote_view-min.css output/css/gn_edit_icon_btns-min.css  vendor/css/icons_rpg_rts_fg.css> ../css/gnote_view.css
cat output/css/common-min.css output/css/gnoteitem_edit-min.css output/css/gn_edit_icon_btns-min.css vendor/css/icons_rpg_rts_fg.css> ../css/gnoteitem_edit.css
cat output/css/common-min.css output/css/search-min.css > ../css/search.css
cat output/css/common-min.css output/css/userprofile-min.css > ../css/userprofile.css

cat output/css/common-min.css output/css/company-min.css > ../css/company.css


#admin css
cat output/css/common-min.css output/css/front-min.css output/css/admin_front-min.css > ../css/admin_front.css
cat output/css/common-min.css output/css/front-min.css output/css/admin_btv-min.css > ../css/admin_btv.css
cat output/css/common-min.css output/css/front-min.css output/css/admin_bti_edit-min.css > ../css/admin_bti_edit.css

#js
cat output/js/front-min.js > ../js/front.js

cat output/js/content_tlbr-min.js output/js/common-min.js vendor/js/hbsm.js > ../js/hbsm.js
cat vendor/js/movemin.js > ../js/movemin.js


cat output/js/gnote_edit-min.js > ../js/gnote_edit.js
cat output/js/gnoteitem_edit-min.js > ../js/gnoteitem_edit.js
cat output/js/gnote_view-min.js > ../js/gnote_view.js
cat output/js/search-min.js > ../js/search.js
cat output/js/userprofile-min.js > ../js/userprofile.js

#meta builds
cat output/js/gnote_edit_general-min.js > ../js/gnote_edit_general.js
cat output/js/gnote_edit_fighters-min.js > ../js/gnote_edit_fighters.js
cat output/js/gnote_edit_rts-min.js > ../js/gnote_edit_rts.js
cat output/js/gnote_edit_rpg-min.js > ../js/gnote_edit_rpg.js


cat output/js/gnoteitem_edit_general-min.js > ../js/gnoteitem_edit_general.js
cat output/js/gnoteitem_edit_fighters-min.js > ../js/gnoteitem_edit_fighters.js
cat output/js/gnoteitem_edit_rts-min.js > ../js/gnoteitem_edit_rts.js
cat output/js/gnoteitem_edit_rpg-min.js > ../js/gnoteitem_edit_rpg.js

cat output/js/gnote_view_general-min.js > ../js/gnote_view_general.js
cat output/js/gnote_view_fighters-min.js > ../js/gnote_view_fighters.js
cat output/js/gnote_view_rts-min.js > ../js/gnote_view_rts.js
cat output/js/gnote_view_rpg-min.js > ../js/gnote_view_rpg.js


#game builds
cat output/css/games/cvs2-min.css > ../css/games/cvs2.css
cat output/js/games/cvs2-min.js > ../js/games/cvs2.js

cat output/css/games/morrowind-min.css > ../css/games/morrowind.css
cat output/js/games/morrowind-min.js > ../js/games/morrowind.js

cat output/css/games/civ5-min.css > ../css/games/civ5.css
cat output/js/games/civ5-min.js > ../js/games/civ5.js

cat output/css/games/fpor-min.css > ../css/games/fpor.css
cat output/js/games/fpor-min.js > ../js/games/fpor.js