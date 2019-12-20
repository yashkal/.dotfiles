#  _               _                           __ _ _      
# | |__   __ _ ___| |__       _ __  _ __ ___  / _(_) | ___ 
# | '_ \ / _` / __| '_ \     | '_ \| '__/ _ \| |_| | |/ _ \
# | |_) | (_| \__ \ | | |    | |_) | | | (_) |  _| | |  __/
# |_.__/ \__,_|___/_| |_|____| .__/|_|  \___/|_| |_|_|\___|
#                      |_____|_|                           

shopt -s autocd
shopt -s cdable_vars
shopt -s cdspell
shopt -s checkjobs
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dirspell
shopt -s histappend
shopt -s lithist

export CLICOLOR=1
export LESS="--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD --tabs=4 --no-init"
# Set colors for less. Borrowed from https://wiki.archlinux.org/index.php/Color_output_in_console#less .
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH" # for gnu coreutils
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH" # for gnu findutils
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
export PATH=$HOME/bin:${PATH}
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[33;1m\]\w\[\033[m\]\n➥ "
export PROMPT_COMMAND="echo"

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

source ~/.aliases
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
