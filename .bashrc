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
#export FREELINGDIR=/Users/jvsingh/3rdParty/installs/freeling/bin
#export PATH=${PATH}:$FREELINGDIR


#-------- Command line set up: END ------------#
#JAVA_HOME as suggested in spark setup
export JAVA_HOME=$(/usr/libexec/java_home)

#Set SCALA_HOME 
export SCALA_HOME=/usr/local/bin/scala
export PATH=$PATH:$SCALA_HOME/bin

#spark-related commands and shells
export PATH=$PATH:$HOME/spark/bin

#kaggle related commands
export PATH=$PATH:$HOME/.local/bin

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


function refresh_git(){
 currwd=`pwd`; 
 for dir in `find ./ -type d`
 do
         echo Refreshing $dir; 
         cd $dir; 
         git pull origin master; 
         cd $currwd; 
 done
}

alias refresh_git=refresh_git
alias coursera="cd $HOME/work/coursera"
#KDB/Q developer
alias q="/Users/jvsingh/q/m64/q"
alias developer='source /Users/jvsingh/work/developer-1.3.0-osx/y/config/config.profile; q /Users/jvsingh/work/developer-1.3.0-osx/y/launcher.q_'
alias qstudio='java -jar /Users/jvsingh/work/qstudio/qstudio.jar'
alias pyq="source ${HOME}/pyq2/bin/activate"


#OpenSSL:
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="$LDFLAGS -L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="$CPPFLAGS -I/usr/local/opt/openssl@1.1/include"
#export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"


