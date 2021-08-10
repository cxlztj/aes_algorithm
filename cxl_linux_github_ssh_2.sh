#!/bin/bash
#Written by Chen Xiaolong
#run as below:
#   chmod 777 cxl_linux_github_ssh_2.sh
#   ssh -T git@github.com
#   ./cxl_linux_github_ssh_2.sh or sh cxl_linux_github_ssh_2.sh

echo "SSH GITHUB Filename(include ext name:*.*) and passwd is :  "
read Filename GITPASSWORD

GITDIR="/home/cxl/github";
GITEMAIL="cxllxj@126.com";
GITUSER="cxllxj";
GITSUBDIR="aes";
#GITPASSWORD="";


if [ ${PWD} != ${GITDIR} ]
then
    cd ${GITDIR}
fi
#echo "${PWD}"

#initialize the git
git init
git config --global user.email "${GITEMAIL}"
git config --global user.name "${GITUSER}"

#upload file to github
cd ${GITSUBDIR}
git remote rm origin
git remote add origin https://${GITUSER}:${GITPASSWORD}@github.com/${GITUSER}/${GITSUBDIR}.git
git add ${Filename}
git commit -am "cxl mint ssh commit"
git push origin master



#end

