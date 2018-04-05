# buildfactory
A generic build structure and process for frontend web application files. It minifies
css and js and then appends files together based on a user configuration


# requirements:
* yui compressor , youll need to download and place in the buildfactory folder
* a little knowledge of bash to edit the configuration


#About the code:
* the code is a set of bash files that are appended together to create one file to execute the build
* the config.sh file is where the user details the structure of their frontend source code (css, js) and how it composes the output files
* execute command :  sudo ./buildfactory.sh


#Config variables
* PWD : the working directory for buildfactory.sj
* BF_RSC_FLDR : where your source folder is for your frontend code
* BF_BLD_LAYERS[n] = "..." : array of various sub folders in your source folder
* BF_ED_JS : javascript folder in your resource folder
* BF_ED_JS : css folder in your resource folder
* BF_BLD_ROUTE_JSFILES[0] = "....." : array in which each entity is a set of files to append together post minification for js
* BF_BLD_ROUTE_JSEND[0] = "..." : array that is the end point of the appended files from the ""_JSFILES array
* BF_BLD_ROUTE_CSSFILES[0] = "....." : array in which each entity is a set of files to append together post minification for css
* BF_BLD_ROUTE_CSSEND[0] = "..." : array that is the end point of the appended files from the ""_CSSFILES array




Resources
==================

-yui compressor: to compress js and css files http://yui.github.io/yuicompressor/
-resources_man.txt: has documentation on options for using yui compressor
