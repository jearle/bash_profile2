alias ls="ls -lah --color"

. "$HOME/.git-bash/.git-completion.bash"
. "$HOME/.git-bash/.git-prompt.sh"

GIT_PS1_SHOWDIRTYSTATE=1

BGREEN='\[\033[1;32m\]'
GREEN='\[\033[0;32m\]'
BRED='\[\033[1;31m\]'
RED='\[\033[0;31m\]'
BBLUE='\[\033[1;34m\]'
BLUE='\[\033[0;34m\]'
YELLOW='\[\033[1;33m\]'
MAGENTA='\[\033[0;35m\]'
LBLUE='\[\033[0;36m\]'
GRAY='\[\033[0;37m\]'
NORMAL='\[\033[00m\]'

MY_GIT="\$(__git_ps1)"
TIME="\@"
MY_PATH="\w"

PS1=$( cat <<EOF

${BBLUE}${MY_GIT}
 ${YELLOW}${TIME}
 ${BGREEN}${MY_PATH}
 ${RED}> ${NORMAL}
EOF
)
