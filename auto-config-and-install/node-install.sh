#!/bin/bash

base_dev=(
	less
	gulp
	coffee-script
	grunt-cli
	bash-language-server
)

install_soft() {
	softs=$1
	for i in ${softs}; do
		soft=$i

		if npm list -g | grep -q "${soft}"; then
			log_success "${soft} is exist"
		else
			log_tip "npm install -g ${soft}..."
			npm install -g "${soft}"
		fi
	done
}

main() {
	install_soft "${base_dev[*]}"
	# install_soft "${custom_soft[*]}"

	cat <<EOF
+-------------------------------------------------+
|                node is done                     |
+-------------------------------------------------+
EOF
}


main
