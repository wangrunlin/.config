#!/bin/bash
# OS_VERSION=$(cat /etc/system-release | awk '{print $(NF-1)}' | awk -F"." '{print $1}')
# log_success OS_VERSION="${OS_VERSION}"

ULIMIT=$(ulimit -n)
log_success ULIMIT="${ULIMIT}"
