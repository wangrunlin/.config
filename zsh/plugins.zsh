# !/bin/zsh

ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$ZSH/custom"

install_ohmyzsh() {
  if [ ! -d $ZSH ]; then
		sh -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/ohmyzsh/ohmyzsh@master/tools/install.sh)"
  fi

	if [ -s ~/.zshrc.pre-oh-my-zsh ]; then
		mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
	fi
}

install_plugin() {
	# 是否下载语法高亮和自动补全插件
	if [ ! -d $ZSH_CUSTOM/plugins/zsh-syntax-highlighting ]; then
		git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	fi

	if [ ! -d $ZSH_CUSTOM/plugins/zsh-autosuggestions ]; then
		git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	fi
}

ohmyzsh_config() {
	export ZSH="/Users/leo/.oh-my-zsh"
	ZSH_THEME="robbyrussell"
	plugins=(git z zsh-autosuggestions zsh-syntax-highlighting)
	source $ZSH/oh-my-zsh.sh
}

# zimfw
zimfw_config() {
	export PLUG_DIR=$HOME/.zim
	if [[ ! -d $PLUG_DIR ]]; then
		wget -nv -O - https://cdn.jsdelivr.net/gh/zimfw/install@master/install.zsh | zsh
		rm ~/.zimrc
		ln -s ~/.config/zsh/zimrc ~/.zimrc
	fi
}


main() {
	install_ohmyzsh
	install_plugin
	ohmyzsh_config
}


main
