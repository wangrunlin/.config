#!/bin/bash

dotfiles=(
	gitconfig
	zshrc
	npmrc
)

link_dotfiles() {
	for i in "${dotfiles[@]}"; do
		dotfile=$i

		if [ -s "${HOME}/.${dotfile}" ]; then
			log_success "${dotfile} is exist"
		else
			log_tip "link ${XDG_CONFIG_HOME}/.${dotfile} ~/${dotfile}"
			ln -s "${XDG_CONFIG_HOME}/.${dotfile}" ~/
		fi
	done
}


main() {
	link_dotfiles
	cat <<EOF
+-------------------------------------------------+
|                link is done                     |
+-------------------------------------------------+
EOF
}


main
