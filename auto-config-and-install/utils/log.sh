#!/bin/bash
function log_tip() {
  echo -e "\\n\033[44;37m [START]: ${1}... \033[0m\\n"
}

function log_success() {
  echo -e "\\n\033[42;37m [SUCCESS]: $1 \033[0m\\n"
}

function log_fail() {
  echo -e "\\n\033[41;37m [FAIL]: $1 \033[0m\\n"
}

function main(){
	log_success 'Loaded the log file.'
}

main
