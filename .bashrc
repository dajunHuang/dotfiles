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

PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:/home/djhuang/Desktop/arm-gnu-toolchain-13.2.Rel1-x86_64-arm-none-linux-gnueabihf/bin:/home/djhuang/Desktop/arm-gnu-toolchain-13.2.Rel1-x86_64-aarch64-none-linux-gnu/bin/:/home/djhuang/.local/bin/stack:/usr/local/go/bin:/home/djhuang/.bin:/home/djhuang/.ghcup/bin:/home/djhuang/Desktop/chronos-demo-arm/lp_solve:/home/djhuang/Desktop/arm-gnu-toolchain-13.2.Rel1-x86_64-aarch64-none-elf/bin/:/home/djhuang/Desktop/arm-gnu-toolchain-13.2.Rel1-x86_64-arm-none-eabi/bin/:/home/djhuang/Desktop/crosstool-ng-build/arm-unknown-linux-gnueabi/bin:/home/djhuang/Desktop/crosstool-ng-build/aarch64-unknown-linux-gnu/bin:/home/djhuang/Desktop/crosstool-ng-build/aarch64-rpi4-linux-gnu/bin:/home/djhuang/Desktop/otawa/bin:/home/djhuang/Desktop/riscv64-gnu-toolchain-build/bin

export http_proxy=http://127.0.0.1:7890
export https_proxy=$http_proxy

. "$HOME/.cargo/env"
