#!/bin/zsh
# File              : .zshrc
# Author            : Leo <alin.run@foxmail.com>
# Date              : 2021-03-20
# Last Modified Date: 2021-04-12
# Last Modified By  : Leo <alin.run@foxmail.com>

export ZSH="$HOME/dotfiles/.oh-my-zsh"

ZSH_THEME="random"
# ZSH_CUSTOM=$ZSH/custom

# 不显示随机主题提示信息
ZSH_THEME_RANDOM_QUIET=true
ZSH_DISABLE_COMPFIX=true

plugins=(
    # hot key
    git
    tmux
    history

    # style
    zsh-autosuggestions
    zsh-syntax-highlighting
    # vi-mode

    # jump
    autojump
    # z

    # - gi list 
    # gi [TEMPLATNAME] >> .gitignore
    gitignore
)

source $ZSH/oh-my-zsh.sh


### user config

# setting
unsetopt beep

# environment
export GITHUB_GIST="$HOME/github.com/002_gist/"

# alias
alias e='exit'
alias l='ls -A'
alias n='nvim'
alias hosts='sudo nvim /etc/hosts'
alias idea='nvim ~/github.com/002_gist/idea/idea.md'
alias a_word='nvim ~/github.com/002_gist/a_word/a_word.md'

