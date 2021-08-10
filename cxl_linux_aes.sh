#!/bin/bash
#Written by Chen Xiaolong
#run as below:
#   chmod 777 cxl_linux_aes.sh
#   
#   ./cxl_linux_aes.sh
echo "Select AES Crypt(e) or AES Decrypt(d) with e or d is :  "
read choice
echo "Select Filename(include ext name:*.*) and PASSWD is :  "
read Filename Passwdname
#Passwdname="";

#aes encrypt
if [ ${choice} == "e" ]
then
   for filename in $(ls ${Filename})
   do 
     openssl enc -aes-128-cbc -e -in $filename -out enc_$filename -pass pass:${Passwdname}
   done
fi

#aes decrypt
if [ ${choice} == "d" ]
then
   for filename in $(ls ${Filename})
   do 
     openssl enc -aes-128-cbc -d -in $filename -out dec_$filename -pass pass:${Passwdname}
   done
fi

#end

