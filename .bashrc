### BEGIN: Give HomeBrew installed packages priority

# Give HomeBrew installed packages priority
HB_PATH="/usr/local/bin:/usr/local/sbin"
# brew install node
HB_PATH="$HB_PATH:/usr/local/share/npm/bin"

### END ###

### BEGIN: add custom apps to path ###

# Add sublime to the terminal
# https://gist.github.com/scottvrosenthal/10736533
# allows subl --help
APP_PATH="$APP_PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin"

### END ###

### BEGIN: Build custom PATH

PATH="$HB_PATH:$APP_PATH:$PATH"

### END ###

### BEGIN: rbenv ###

export RBENV_ROOT=/usr/local/var/rbenv

# Load rbenv into a shell session *as a function*
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### END ###


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

#--- Function to rename molis files, whatever to ND-
function rename_to_nd(){
 for file in `ls |grep -v Icon|grep -v "ND-"`; 
 do 
    # New file name
    y="ND-"$file; 
    echo renaming $file to $y; 
    mv $file $y; 
 done
}

function conda_help(){
  echo To remove env: conda remove --name tutorial --all
  echo To create end: conda env create --file tutorial.yaml 
  echo "    Have a look at tutorial.yaml in /Users/jvsingh/work/stanford/XCS229ii-ML-Strategy-RL/a_tutorial"
  echo "To activate" : conda activate tutorial
  echo "To deactivate" : conda deactivate
}


# Syntax highligtinh as per https://ole.michelsen.dk/blog/syntax-highlight-files-macos-terminal-less/
# First : brew install source-highlight
# Then below:
LESSPIPE=`which src-hilite-lesspipe.sh`
export LESSOPEN="| ${LESSPIPE} %s"
export LESS=' -R -X -F '

