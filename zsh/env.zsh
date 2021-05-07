export XDG_CONFIG_HOME=$HOME/.config
export EDITOR=nvim
# === Java
# export JAVA_HOME="/usr/local/opt/openjdk@11/bin"
# export PATH="$JAVA_HOME/bin:$PATH"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# === pyenv
export PYENV_ROOT=$(brew --prefix pyenv)
export PATH=$PYENV_ROOT/bin:$PATH
