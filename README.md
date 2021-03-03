# buildfactory
A generic build structure and process for frontend web application files. It minifies
css and js and then appends files together based on a user configuration


## About the code:
* the code is a set of bash files that are appended together to create one file to execute the build
* the config.sh file is where the user details the structure of their frontend source code (css, js) and how it composes the output files
* the config takes an array of subfolders (layers) to process for your css and js, the css array is also applied to processing
your less files. It is expected since you have configured a subfolder in your css you will have the corresponding less file
that compiles to that css file. This does not exclude you from adding extra folders in your less folder to organize variables
and other common elements. You can import these using the less commands normally without having to configure that in your
build process
* the process does not setup your end point folder , so make sure you have the correct  folders ready to take your
processed files


## resource folder structure:
* rsc folder:
    * css
        * css sub layer (generated from less process)
    * js
        * js sub layer
    * less
        * css sub layer

* external end js folder

* external end css folder

## Config variables
* PWD : the working directory for buildfactory.sh
* BF_RSC_FLDR : where your source folder is for your frontend code relative to the config file

* BF_BLD_LAYERS[n] = "..." : array of various sub folders in your source folder
* BF_BLD_CSS_LAYERS[n] = "..." : array of various sub folders in your source folder

* BF_ED_JS : javascript folder for your end output relative to the config file
* BF_ED_CSS : css folder for your end output relative to the config file

* BF_BLD_ROUTE_JSFILES[0] = "....." : array in which each entity is a set of files separated by a space to append 
together post minification for js. Each file relative to the resource/js folder
* BF_BLD_ROUTE_JSEND[0] = "..." : array that is the end point of the appended files from the ""_JSFILES array within the
BF_ED_JS folder

* BF_BLD_ROUTE_CSSFILES[0] = "....." : array in which each entity is a set of files separated by a space to append 
together post minification for css. . Each file relative to the resource/css folder
* BF_BLD_ROUTE_CSSEND[0] = "..." : array that is the end point of the appended files from the ""_CSSFILES array within the
BF_ED_CSS folder




## how to run
* edit the config file to point to your source folder
* cd into the buildfactory folder
* run sudo ./buildfactory.sh


## htmps process
* a process to turn html templates into javascript strings
* is not part of the build process and must be done before hand if the desire is to append these js files to the rest of the js logic
* alternatively these templates can all be appenend into one file then loaded and maintained separately
* steps to run:
    * move html files into htmps directory with the in the form of file.htmp
    * cd into the htmps directory
    * run "java -jar sbhtmps.jar [file_output_name] [js object var name] [filename1 no extension] [filename2] ...."
    * file will be generated at htmps.js
    * move js file to new directory
    * cd to build factory
    * run build
* at this point the build and js logic should use the compiled html files rather than parsing html on page load


## Resources and requirements
==================

- yui compressor: to compress js and css files http://yui.github.io/yuicompressor/ (placed in root folder)
- less4j: to compile less to css files  https://github.com/SomMeri/less4j (placed in root folder)
- resources_man.txt: has documentation on options for using yui compressor
- java


##development the htmps file (html templates)
=============================

-compile: javac Sbhtmps.java
-create jar: jar -cfm [jar name].jar manifest.mf [main class file]
-manifest file is a very simple file in the dev folder that points to the main class file

