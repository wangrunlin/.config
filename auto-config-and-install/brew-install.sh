#!/bin/bash

# 判断是否为 Mac os
if [[ `uname` != "Darwin" ]]; then
  echo "This script runs only Mac OS."
fi

#获取硬件信息
UNAME_MACHINE="$(uname -m)"

#Mac
if [[ "$UNAME_MACHINE" == "arm64" ]]; then
	#M1
	PREFIX="/opt/homebrew"
else
	#Inter
	PREFIX="/usr/local"
fi

brew_soft=(
	ranger
	lazygit
	neovim
	openjdk@8
	openjdk@11
	maven
	yarn
	htop

	iterm2
	jetbrains-toolbox
)
#node

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
	for i in ${brew_soft[@]}; do
		soft=$i

		if [ -d $PREFIX/Cellar/$soft ] || [ -d $PREFIX/Caskroom/$soft ]; then
			echo "$soft is exist"
		else
			echo "brew install ${soft}..."
			brew install $soft
		fi
	done
}

main() {
	install_brew
	install_soft
}


main
