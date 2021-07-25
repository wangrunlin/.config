#!/bin/bash
# Description: The script can quickly initialize Centos.
#--------------------------------------------------------------|
#   @Program    : auto-config-and-install.sh                   |
#   @Author     : Leo Wang   <leo@wangrunlin.com>              |
#   @Date       : 2021-07-26                                   |
#--------------------------------------------------------------|

SCRIPT_PATH="$HOME/.config/auto-config-and-install"

main() {
	source "${SCRIPT_PATH}/welcome.sh"
	source "${SCRIPT_PATH}/utils/main.sh"
	source "${SCRIPT_PATH}/brew-install.sh"
	source "${SCRIPT_PATH}/link-config.sh"
	source "${SCRIPT_PATH}/node-install.sh"
	source "${SCRIPT_PATH}/custom-config.sh"
}


main
