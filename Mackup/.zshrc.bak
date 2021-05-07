#!/bin/zsh
# File              : .zshrc
# Author            : Leo <alin.run@foxmail.com>
# Date              : 2021-03-20
# Last Modified Date: 2021-04-12
# Last Modified By  : Leo <alin.run@foxmail.com>

export ZSH="$HOME/dotfiles/.oh-my-zsh"
# ZSH_THEME="ys"
ZSH_THEME="robbyrussell"
ZSH_THEME_RANDOM_QUIET=true # 不显示随机主题提示信息
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
export XDG_CONFIG_HOME="$HOME/dotfiles"
export EDITOR='nvim'
# export JAVA_HOME="/usr/local/opt/openjdk@11/bin"
# export PATH="$JAVA_HOME/bin:$PATH"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#pyenv
export PYENV_ROOT=$(brew --prefix pyenv)
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# alias
alias e='exit'
alias l='ls -A'
alias n='nvim'
alias hosts='sudo nvim /etc/hosts'
alias idea='nvim ~/github.com/002_gist/idea/idea.md'
alias a_word='nvim ~/github.com/002_gist/a_word/a_word.md'
alias auto_commit='bash ~/dotfiles/script/auto-commit.sh'
alias daydayone='bash ~/github.com/study_git/commit.sh'
alias python='python3'

