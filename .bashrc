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
