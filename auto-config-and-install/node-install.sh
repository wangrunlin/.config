#!/bin/bash

base_dev=(
	less
	gulp
	coffee-script
	grunt-cli
	bash-language-server
)

install_node() {
	if type node >/dev/null 2>&1; then
		log_success "node is exist"
	else
		if type n >/dev/null 2>&1; then
			log_tip "node is download..."
			sudo n lts
			sudo n latest
		else
			log_fail "n not found, can't install node"
			return 1
		fi
	fi
}

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
	install_node
	install_soft "${base_dev[*]}"
	# install_soft "${custom_soft[*]}"

	cat <<EOF
+-------------------------------------------------+
|                node is done                     |
+-------------------------------------------------+
EOF
}


main
