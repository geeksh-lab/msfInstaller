#!/bin/bash

echo "#   __________________________                                                           
#
#   < << Welcome to ScsTools>> >                                                                
#    --------------------------                                                          
#    \
#     \
#                                   .::!!!!!!!:.
# .!!!!!:.                        .:!!!!!!!!!!!!
# ~~~~!!!!!!.                 .:!!!!!!!!!UWWW$$$ 
#      :$$NWX!!:           .:!!!!!!XUWW$$$$$$$$$P 
#      $$$$$##WX!:      .<!!!!UW$$$$  $$$$$$$$# 
#      $$$$$  $$$UX   :!!UW$$$$$$$$$   4$$$$$* 
#     ^$$$B  $$$$\     $$$$$$$$$$$$   d$$R* 
#        *$bd$$$$      *$$$$$$$$$$$o+#
#
#
#

"
set -o errexit



source config.sh
:start:
#try to install require package
:requirePkg:
#when all dependencies are statisfied
#Make a fudge for testing integrity
fudge 25 .4 "Testing integrity"
#then download Metasploit-framework
:msfdownload:
rm -rf msfinstall
echo "Done !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
