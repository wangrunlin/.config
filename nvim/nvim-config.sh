#!/bin/bash

install_pip() {
	if ! type pip >/dev/null 2>&1; then
		echo "install pip..."
		curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py   # 下载安装脚本
		sudo /usr/bin/python2 get-pip.py    # 运行安装脚本
		rm get-pip.py
	fi
}

set_python_env() {
	if [ -s /usr/bin/python2 ]; then
		/usr/bin/python2 -m pip install pynvim
	fi

	if [ -s /usr/bin/python3 ]; then
		/usr/bin/python3 -m pip install pynvim
	fi
}

set_node_env() {
	if npm list -g | grep -q neovim; then
		echo 'npm neovim is exist'
	else
		echo 'npm install -g neovim...'
		sudo npm install -g neovim
	fi
}

set_ruby_env() {
	if gem list | grep -q neovim; then
		echo "gem neovim rake is exist"
	else
		echo "gem install neovim..."
		sudo gem install neovim
	fi
}

set_perl_env() {
	if cpan -l | grep -q Neovim; then
		echo "cpan neovim is exist"
	else
		echo "cpan -i Neovim::Ext..."
		sudo cpan -i Neovim::Ext
	fi
}

main() {
	# install_pip
	# set_python_env
	set_node_env
	set_ruby_env
	# set_perl_env
}


main
