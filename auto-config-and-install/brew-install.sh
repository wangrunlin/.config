#!/bin/bash

# openjdk@8
# node
base_dev=(
	openjdk@11
	go
	maven
	mysql
)

custom_soft=(
	git
	tmux
	ranger
	lazygit
	neovim
	jenv
	yarn
	htop
	wget
	bat
	exa
	fzf
	tldr
	cloc
	mycli
	asciinema
	shellcheck
	translate-shell

	maccy
	iterm2
	typora
	jetbrains-toolbox
)

fonts=(
	font-jetbrains-mono-nerd-font
)


# 判断是否为 Mac os
if [[ $(uname) != "Darwin" ]]; then
  echo "This script runs only Mac OS."
fi

#获取硬件信息
UNAME_MACHINE="$(uname -m)"

# Mac
if [[ "$UNAME_MACHINE" == "arm64" ]]; then
	# M1
	PREFIX="/opt/homebrew"
else
	# Inter
	PREFIX="/usr/local"
fi


install_brew() {
	if type brew >/dev/null 2>&1; then
		echo "brew is exist, install soft..."
	else
		echo "install brew..."
		# 国内源
		/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
	fi
}

install_soft() {
	softs=$1
	for i in ${softs}; do
		soft=$i

		if [ -d ${PREFIX}/Cellar/"${soft}" ] || [ -d ${PREFIX}/Caskroom/"${soft}" ]; then
			log_success "$soft is exist"
		else
			log_tip "brew install ${soft}..."
			brew install "${soft}"
		fi
	done
}

install_font() {
	# if [ -z $(brew tap | grep cask-fonts) ]; then
	if ! brew tap | grep -q cask-fonts; then
		echo "brew tap homebrew/cask-fonts"
		brew tap homebrew/cask-fonts
	fi

	install_soft "${fonts[*]}"
}

main() {
	log_tip "brew install"

	install_brew
	install_soft "${base_dev[*]}"
	install_soft "${custom_soft[*]}"
	install_font

	cat <<EOF
+-------------------------------------------------+
|                brew is done                     |
+-------------------------------------------------+
EOF
}


main
