#!/bin/sh

ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$ZSH/custom"


install_ohmyzsh() {
  if [ ! -d "${ZSH}" ]; then
		sh -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/ohmyzsh/ohmyzsh@master/tools/install.sh)"
  fi
}

install_plugin() {
	# 是否下载语法高亮和自动补全插件
	if [ ! -d "${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting" ]; then
		git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
	fi

	if [ ! -d "${ZSH_CUSTOM}/plugins/zsh-autosuggestions" ]; then
		git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
	fi
}

main() {
	install_ohmyzsh
	install_plugin

	cat <<EOF
+-------------------------------------------------+
|                 zsh is done                     |
+-------------------------------------------------+
EOF
}


main
