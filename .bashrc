#  _               _
# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__
# |_.__/ \__,_|___/_| |_|_|  \___|

# Automatically start tmux
# TODO
# ps -p $$ -o args,ppid
# ps -p <process> -o args
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

# Options
shopt -s autocd
shopt -s cdable_vars
shopt -s cdspell
shopt -s checkjobs
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dirspell
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s lithist

# History
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTIGNORE="*SECRET*:clear:*TOKEN*"
export HISTCONTROL=ignoredups

# Colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# less configuration
# Borrowed from https://wiki.archlinux.org/index.php/Color_output_in_console#less .
export LESS="--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD --tabs=4 --no-init"
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# User defined files
source ~/.aliases
[ -f ~/.homebrew ] && source ~/.homebrew
export EDITOR="nvim"

# Prompt
# https://www.tecmint.com/customize-bash-colors-terminal-prompt-linux/

export PS1="\[\e[36m\]\u\[\e[m\]"			# Username
export PS1="${PS1}@"					# @
export PS1="${PS1}\[\e[33;1m\]\w\[\e[m\] "		# Host
export PS1="${PS1}"'\[\e[35;4m\]$(__docker_machine_ps1 "[%s]")\[\e[m\]'    # docker-machine prompt
export PS1="${PS1}\n➥ "					# Newline
