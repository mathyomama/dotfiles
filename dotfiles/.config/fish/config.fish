if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim "vimx"
[ "$TERM" = "xterm-kitty" ] && alias kssh "kitten ssh"

fish_add_path "$HOME/.local/bin"

# LESS colors
#set -x PAGER "less"
set -x MANPAGER "less -s -M +Gg"
#set -x LESS "--RAW-CONTROL-CHARS"
#set -x LESS_TERMCAP_mb $'\e[01;31m'       # begin blinking
#set -x LESS_TERMCAP_md $'\e[01;37m'       # begin bold
#set -x LESS_TERMCAP_me $'\e[0m'           # end all mode like so, us, mb, md, mr
#set -x LESS_TERMCAP_se $'\e[0m'           # end standout-mode
#set -x LESS_TERMCAP_so $'\e[45;93m'       # start standout mode
#set -x LESS_TERMCAP_ue $'\e[0m'           # end underline
#set -x LESS_TERMCAP_us $'\e[4;93m'        # start underlining
set -x LESS_TERMCAP_mb $(tput bold; tput setaf 2) # green
set -x LESS_TERMCAP_md $(tput bold; tput setaf 1) # cyan
set -x LESS_TERMCAP_me $(tput sgr0)
set -x LESS_TERMCAP_so $(tput bold; tput setaf 3; tput setab 4) # yellow on blue
set -x LESS_TERMCAP_se $(tput rmso; tput sgr0)
set -x LESS_TERMCAP_us $(tput smul; tput bold; tput setaf 3) # white
set -x LESS_TERMCAP_ue $(tput rmul; tput sgr0)
set -x LESS_TERMCAP_mr $(tput rev)
set -x LESS_TERMCAP_mh $(tput dim)
set -x LESS_TERMCAP_ZN $(tput ssubm)
set -x LESS_TERMCAP_ZV $(tput rsubm)
set -x LESS_TERMCAP_ZO $(tput ssupm)
set -x LESS_TERMCAP_ZW $(tput rsupm)
set -x GROFF_NO_SGR 1         # For Konsole and Gnome-terminal
