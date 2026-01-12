#!/bin/bash
# Nord Turbo Pascal Modern Terminal Theme
# Usage: source nord-turbo-pascal-modern.sh

# Background
export TERM_BG="#252b36"

# Foreground
export TERM_FG="#ECEFF4"

# ANSI Colors
export TERM_BLACK="#1A1D2A"
export TERM_RED="#FF5C57"
export TERM_GREEN="#A3E68C"
export TERM_YELLOW="#FFD75F"
export TERM_BLUE="#88C0D0"
export TERM_MAGENTA="#C27AC0"
export TERM_CYAN="#8BE9FD"
export TERM_WHITE="#ECEFF4"

# Bright Colors
export TERM_BRIGHT_BLACK="#343C50"
export TERM_BRIGHT_RED="#FF7A73"
export TERM_BRIGHT_GREEN="#B4F7A0"
export TERM_BRIGHT_YELLOW="#FFE28A"
export TERM_BRIGHT_BLUE="#A0D0E6"
export TERM_BRIGHT_MAGENTA="#D48AD8"
export TERM_BRIGHT_CYAN="#A0F0FF"
export TERM_BRIGHT_WHITE="#FFFFFF"

# Set terminal colors (for terminals that support it)
if [ -n "$TMUX" ]; then
    # Inside tmux
    printf '\033Ptmux;\033\033]11;#252b36\033\\'
    printf '\033Ptmux;\033\033]10;#ECEFF4\033\\'
elif [ "${TERM%%-*}" = "screen" ]; then
    # Inside screen
    printf '\033P\033]11;#252b36\033\\'
    printf '\033P\033]10;#ECEFF4\033\\'
else
    # Direct terminal
    printf '\033]11;#252b36\033\\'
    printf '\033]10;#ECEFF4\033\\'
fi

# For bash prompt colors
export PS1="\[\033[38;5;231m\]\u@\h\[\033[0m\]:\[\033[38;5;221m\]\w\[\033[0m\]\$ "
