#
# ~/.bashrc
#
if [[ ${EUID} == 0 ]] ; then
    PS1='\[\033[01;31m\][\h\[\033[01;36m\] \W \$ '
else
    PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ ' 
fi

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias l='ls -l --color=auto'
alias la='ls -a --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias cp='cp -i'
alias df='df -h'
alias free='free -m' 

shopt -s checkwinsize
shopt -s expand_aliases
shopt -s histappend

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=10000
export HISTIGNORE='pwd:exit:fg:bg:top:clear:history:ls:uptime:df'
export PATH=~:$PATH

PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
