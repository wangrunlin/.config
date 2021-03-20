#!/bin/zsh
# File              : .zshrc
# Author            : Leo <alin.run@foxmail.com>
# Date              : 20.03.2021
# Last Modified Date: 20.03.2021
# Last Modified By  : Leo <alin.run@foxmail.com>

export ZSH="$HOME/dotfiles/.oh-my-zsh"

ZSH_THEME="random"
# ZSH_CUSTOM=$ZSH/custom

# 不显示随机主题提示信息
ZSH_THEME_RANDOM_QUIET=true

plugins=(
    # hot key
    git
    tmux
    history

    # style
    zsh-autosuggestions
    zsh-syntax-highlighting
    vi-mode

    # jump
    autojump
    z

    # - gi list 
    # gi [TEMPLATNAME] >> .gitignore
    gitignore
)

source $ZSH/oh-my-zsh.sh


# alias
alias e='exit'
alias l='ls -A'
alias n='nvim'
