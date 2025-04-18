#!/bin/bash
#..............: bash-completion.sh
#..............: Dibuat oleh: Rofi (fixploit03)
#..............: Github: https://github.com/fixploit03/bash-completion

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

bind "set completion-ignore-case on"
# - END -
