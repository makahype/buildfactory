# buildfactory
A generic build structure and process for frontend web application files


# requirements:
* yui compressor
* a little knowledge of bash to edit the configuration


== expects your resource folder path to be:
* [path]/js for javascript files
* [path]/css for css files


frontend boiler plate overview
================================

This boiler plate allows us to easily maintain the
assets necessary to create good, easy to maintain, optimized
front end code.

This boiler plate contains no code itself but is just a standard for 
folder relationship and code processing

Code Layout
================================

-/resources/html_templates
    -reset.css: holds css that is included at the top of each template
                this is common css that should be used in all projects
                 weather you are using one of the templates for markup or not
    -generic_*: holds css and markup for a particular page style, usually commented
                at the top of the css file for that type, pic which css you wish to 
                use for your project move it into the build/css folder and have it
                injected into your output, of course also use the markup that is also
                supplied to display the layout
    -each type of page has its own css, at the top of the css file is a set of 
     configurable css properties, these are to handle variables will tweak the 
     layout but not change it (ie. for 2 column layout you can tweek the left and right 
     column sizes)
     -note that these layouts do not include responsive design, if you go mobile first
     you can warp the entire css file a media query (or add it as an attribute to the link
     tag)

-/resources/fontawe
    -has an index.html file that displays all the fonts included in the files
    -css/font-awesome.css is the file that includes the font assests and assigns them
        to the correct css rule (the files although provided are base 64 encoded into the 
        css file so the css file is all you should need to include them into your project)


-/build/
    -css folder includes the css you want to minify
    -js folder includes the js you want to minify
    -.bat and .sh files for processing on windows or linux
    -yuicompressor to compress the css and js files


-/output/
    -css: the minified css from the build folder
    -js: the minified js from the build folder
    

-/vendor/
    -store thirdparty already processed assets in this folder and move them to the 
        correct destination folder in your edits to the "build_app" script
    -css: third party css files to concatenate/move into the app
    -js: thrid party js files to concatenate/move into the app


The Process
================================
1)place assets in their correct folder in the build folder

2)edit build_app.sh or build_app.bat to concatenate files correctly for your final placement

3)run build_app.sh or build_app.bat

4)load code in the browser and test

**usage notes**
-make sure there are no css/js collisions in any files
-put responsive css in seperate files and use the last
build process to append the files in the right order

Resources
==================

-yui compressor: to compress js and css files http://yui.github.io/yuicompressor/
-css/
    -pure css 
    -pure css grids
-js/
    -hbsm lib
-resources_man.txt: has documentation on options for using yui compressor
