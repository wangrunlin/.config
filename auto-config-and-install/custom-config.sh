#!/bin/bash

# MacOS only

test_wget() {
  if ! type wget >/dev/null 2>&1; then
		echo 'error: wget not found'
		echo 'you can run: brew install wget'
		return 1
	fi
}

get_typora_theme() {
	if [ -d /opt/homebrew/Caskroom/typora ] && [ -s ~/Library/Application\ Support/abnerworks.Typora/themes/tomotoes.css ]; then
		log_success "tomotoes.css is exist"
	else
		test_wget
		log_tip "download typora theme..."
		cd "${HOME}/Library/Application\ Support/abnerworks.Typora/themes"
		wget http://cdn.jsdelivr.net/gh/Tomotoes/typora-theme-tomotoes@master/tomotoes.css
	fi
}

get_typora_theme
	cat <<EOF
+-------------------------------------------------+
|               custom is done                    |
+-------------------------------------------------+
EOF
