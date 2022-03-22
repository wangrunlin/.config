export XDG_CONFIG_HOME=$HOME/.config
export EDITOR=nvim
export GREP_COLOR='1;32'
# ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$PATH:/opt/homebrew/lib/ruby/gems/3.0.0/bin/"
# mongodb
export PATH=$PATH:/opt/mongodb/bin
# Golang
export PATH=$PATH:$HOME/go/bin
export LANG=en_US.UTF-8

# Java
# export JAVA_HOME="/opt/homebrew/Cellar/openjdk@11/11.0.12"
# export PATH="$PATH:$JAVA_HOME/bin"
# export PATH="$JAVA_HOME/bin:$PATH"
# jenv
export PATH="$PATH:$HOME/.jenv/bin"
eval "$(jenv init -)"

export JAVA_HOME="/opt/homebrew/Cellar/openjdk/17.0.2"

# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# === pyenv
# export PYENV_ROOT=$(brew --prefix pyenv)
# export PATH=$PYENV_ROOT/bin:$PATH

# ranger
export TERM="xterm-256color"
