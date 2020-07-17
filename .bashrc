green=$(tput setaf 118);
dullgreen=$(tput setaf 28);
purple=$(tput setaf 129); #default value is 129
dullblue=$(tput setaf 56);
white=$(tput setaf 15);

reset=$(tput sgr0);

bold=$(tput bold);
PS1="\[${bold}\]";
PS1+="\[${green}\]\u";
PS1+="\[${white}\]@";
PS1+="\[${purple}\]\h \W";
PS1+=" -> \[${reset}\]";
export PS1;
