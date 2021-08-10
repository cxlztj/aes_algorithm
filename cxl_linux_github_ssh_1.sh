#!/bin/bash
#Written by Chen Xiaolong
#run as below:
#   chmod 777 cxl_linux_github_ssh_1.sh
#   ssh -T git@github.com
#   ./cxl_linux_github_ssh_1.sh or sh cxl_linux_github_ssh_1.sh

echo "SSH GITHUB Filename(include ext name:*.*) is :  "
read Filename 

GITDIR="/home/cxl/github/aes";
GITEMAIL="cxllxj@126.com";
GITUSER="cxllxj";
#GITSUBDIR="apple_code";
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
#cd ${GITSUBDIR}
git remote rm origin
git remote add origin git@github.com:${GITUSER}/${GITSUBDIR}.git
git add ${Filename}
git commit -am "cxl mint ssh commit"
git push origin master



#end

