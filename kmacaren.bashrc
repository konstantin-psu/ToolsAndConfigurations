# only do th interactive
export LSCOLORS='ExGxFxdxCxDxDxBxBxExEx'
    # Shell affecting
    export LESS="-i -j3 -s -M -g -q"
    export MANPAGER="less $LESS"
#    export LANG=en_US

    #export TERMINFO=$lib/terminfo
    ulimit unlimited

    set -o noclobber
    set -o vi

    # ALIASES:
    # some silly wrote over this very useful app
    alias more=less
    alias mk="make -j"
    alias x='exit'
    alias view="vim -R"
    alias run="run_aout.sh"
    alias ll="ls -lah"
    alias tmux="tmux -2"
    #alias javacc="java -cp ~/bin/javacc/bin/lib/javacc.jar javacc"
    # current most common work directory
    #eval "`dircolors -b $HOME/.dircolors`"

    # FUNCTIONS
    mkcd () { mkdir $@; cd $@;}
    cl ()
    {
      cd $@
      $MYLS --color=tty -tr
    }

    #ENVIRONMENT:
    #COLORS
    export Color_OFF="[0m"
    export Bold="[1m"
    export c2m="[2m"
    export c3m="[3m"
    export Underline="[4m"
    export Blink="[5m"
    export c6m="[6m"
    export Reverse="[7m"
    export Color0="[30m"
    export Color1="[31m"
    export Color2="[32m"
    export Color3="[33m"
    export Color4="[34m"
    export Color5="[35m"
    export Color6="[36m"
    export Color7="[37m"
    export Color8="[90m"
    export Color9="[91m"
    export Color10="[92m"
    export Color11="[93m"
    export Color12="[94m"
    export Color13="[95m"
    export Color14="[96m"
    export Color15="[97m"
    export c40="[40m"
    export c41="[41m"
    export c42="[42m"
    export c43="[43m"
    export c44="[44m"
    export c45="[45m"
    export c46="[46m"
    export c47="[47m"

    #   PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
    HN=`hostname`
    #PROMPT_COMMAND='echo -ne "\033]0;${PWD} (${HN})\007"'
    # c'mon craig, ROY-G-BIV man!
    export PS1="" 									# clear it
    export PS1=$PS1"\[$Color14\][\h] "
    export PS1=$PS1"\[$Color1\]\t "					# red, time
    export PS1=$PS1"\[$Color11\]\W "					# orange, pwd
    #export PS1=$PS1"\[$c46\]\t "					# orange, pwd
    #export PS1=$PS1"\[$Color10\]\W "					# orange, pwd
    #export PS1=$PS1"\W "					# orange, pwd
    #nextChar='='
    # alt '
    #nextChar=�
    #if [ "$TERM" = "linux" ]; then
    #	nextColor="\[$Bold\]\[$Color3\]"
    #else
    #	nextColor="\[$Color8\]"
    #fi
    #export PS1=$PS1"\[$Color3\]$nextChar\[$Color_OFF\]"			# yellow

    # alt shift 4
    #nextChar=�
    #export PS1=$PS1"\[$Color2\]$nextChar"	# green

    # alt 6
    #nextChar=�
    nextChar='>'
    export PS1=$PS1"\[$Color14\]$nextChar"			# cyan
    #nextChar=� # altw
    #export PS1=$PS1"\[$Color_OFF\]\[$Color4\]$nextChar"		# blue
    #nextChar=� # alt ;
    #export PS1=$PS1"\[$Color5\]$nextChar\[$Color_OFF\] "	# indigo/poipleis
    #export PS1=$PS1"\[$Bold\]\[$Color5\]> \[$Color_OFF\]"	# violet, space
    export PS1=$PS1"\[$Bold\]\[$Color5\]>\[$Color1\]> \[$Color_OFF\]"	# violet, space

#set background color to Color3
#hi Normal ctermbhite ctermfg=Black guifg=Black guibg=White
#ESTORE='\033[0m'
#
#RED='\033[00;31m'
#GREEN='\033[00;32m'
#YELLOW='\033[00;33m'
#BLUE='\033[00;34m'
#PURPLE='\033[00;35m'
#CYAN='\033[00;36m'
#LIGHTGRAY='\033[00;37m'
#
#LRED='\033[01;31m'
#LGREEN='\033[01;32m'
#LYELLOW='\033[01;33m'
#LBLUE='\033[01;34m'
#LPURPLE='\033[01;35m'
#LCYAN='\033[01;36m'
#WHITE='\033[01;37m'


#Ansible configuration
#
#some stuff
#
set -o vi

export EDITOR=vim

if [ -d ~/bin ]
  then
    PATH=$PATH:~/bin
    export PATH  
fi
if [ -d /usr/local/bin ]
  then
    PATH=/usr/local/bin:$PATH
fi


#test -e ~/.dircolors && \
#    eval `dircolors -b ~/.dircolors`

alias ls="ls --color=always"
alias grep="grep --color=always"
alias egrep="egrep --color=always"

