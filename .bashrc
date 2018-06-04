#-------- Command line set up: START ------------#
orange=$(tput setaf 166);
yellow=$(tput setaf 228);
green=$(tput setaf 71);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput sgr0);

#Command line
PS1="\[${orange}\]\u: "
PS1+="\[${bold}${green}\]\w "
PS1+=" -> \[${reset}\]"
export PS1


#FREELING INstalls
export FREELINGDIR=/Users/jvsingh/3rdParty/installs/freeling/bin
export PATH=${PATH}:$FREELINGDIR


#-------- Command line set up: END ------------#

#Convert spaces in filenames to underscores in current directory

spaceToUnderscores()
{
        for file in `ls |sed -e 's/ /~/g'`
        do
                echo $file;
                fileOrig=`echo $file | sed -e 's/\~/ /g'`
                fileNew=`echo $file | sed -e 's/\~/_/g'`
                echo $fileOrig
                echo Moving  "$fileOrig" to $fileNew
                mv "$fileOrig" $fileNew
        done
}


refresh_git_fn()
{
   currdir=`pwd`;
   for dir in `find ./ -type d -maxdepth 3  |grep -v ".git"`; do echo refreshing $dir; cd $dir; git pull origin master 2>/dev/null; cd $currdir;  done
}
alias refreshgit=refresh_git_fn
alias gitrefresh=refresh_git_fn
