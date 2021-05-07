#!/bin/bash
# File              : auto-commit.sh
# License           : MIT
# Author            : Leo <alin.run@foxmail.com>
# Date              : 2021-04-12
# Last Modified Date: 2021-04-12
# Last Modified By  : Leo <alin.run@foxmail.com>

setup_color() {
	# Only use colors if connected to a terminal
	if [ -t 1 ]; then
		RED=$(printf '\033[31m')
		GREEN=$(printf '\033[32m')
		YELLOW=$(printf '\033[33m')
		BLUE=$(printf '\033[34m')
		BOLD=$(printf '\033[1m')
		RESET=$(printf '\033[m')
	else
		RED=""
		GREEN=""
		YELLOW=""
		BLUE=""
		BOLD=""
		RESET=""
	fi
}

main() {
  setup_color

  git add ./

  git commit -m "auto commit: $*"

  git push


  # the end

  printf %s "$GREEN"
  cat <<'EOF'
               __                                          _ __ 
  ____ ___  __/ /_____     _________  ____ ___  ____ ___  (_) /_
 / __ `/ / / / __/ __ \   / ___/ __ \/ __ `__ \/ __ `__ \/ / __/
/ /_/ / /_/ / /_/ /_/ /  / /__/ /_/ / / / / / / / / / / / / /_  
\__,_/\__,_/\__/\____/   \___/\____/_/ /_/ /_/_/ /_/ /_/_/\__/   .... is normal running.
                                                                
EOF

}

main "$@"
