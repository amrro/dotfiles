# Bold text (headers, etc.)
export LESS_TERMCAP_md=$'\e[01;32m'    # green bold

# Underlined text (links, etc.)
export LESS_TERMCAP_us=$'\e[04;36m'    # cyan underline

# Blinking text (used sparingly)
export LESS_TERMCAP_mb=$'\e[01;31m'    # red bold

# Standout text (reverse video)
export LESS_TERMCAP_so=$'\e[01;44;37m' # white on blue

# End standout-mode
export LESS_TERMCAP_se=$'\e[00m'       # reset

# End underline-mode
export LESS_TERMCAP_ue=$'\e[00m'       # reset

# Default text color
export LESS_TERMCAP_me=$'\e[00m'       # reset

# Man page text
export LESS_TERMCAP_0=$'\e[00;37m'     # light gray

# Alternate background
export LESS_TERMCAP_1=$'\e[00;33m'     # yellow

# Reset text formatting
export LESS_TERMCAP_2=$'\e[00;37m'     # light gray

# Set the terminal background color (optional, if supported)
# This example uses a dark gray background
# echo -ne '\033]11;#303030\007'
