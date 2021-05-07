export PLUG_DIR=$HOME/.zim
if [[ ! -d $PLUG_DIR ]]; then
	wget -nv -0 - https://cdn.jsdelivr.net/gh/zimfw/install@master/install.zsh | zsh
	rm ~/.zimrc
	ln -s ~/.config/zsh/zimrc ~/.zimrc
fi
