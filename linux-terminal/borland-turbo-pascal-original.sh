#!/bin/bash
# Borland Turbo Pascal Original Terminal Theme
# Usage: source borland-turbo-pascal-original.sh

# Background
export TERM_BG="#0000AA"

# Foreground
export TERM_FG="#AAAAAA"

# ANSI Colors
export TERM_BLACK="#000000"
export TERM_RED="#AA0000"
export TERM_GREEN="#00AA00"
export TERM_YELLOW="#AAAA00"
export TERM_BLUE="#0000AA"
export TERM_MAGENTA="#AA00AA"
export TERM_CYAN="#00AAAA"
export TERM_WHITE="#AAAAAA"

# Bright Colors
export TERM_BRIGHT_BLACK="#555555"
export TERM_BRIGHT_RED="#FF5555"
export TERM_BRIGHT_GREEN="#55FF55"
export TERM_BRIGHT_YELLOW="#FFFF55"
export TERM_BRIGHT_BLUE="#5555FF"
export TERM_BRIGHT_MAGENTA="#FF55FF"
export TERM_BRIGHT_CYAN="#55FFFF"
export TERM_BRIGHT_WHITE="#FFFFFF"

# Set terminal colors (for terminals that support it)
if [ -n "$TMUX" ]; then
    # Inside tmux
    printf '\033Ptmux;\033\033]11;#0000AA\033\\'
    printf '\033Ptmux;\033\033]10;#AAAAAA\033\\'
elif [ "${TERM%%-*}" = "screen" ]; then
    # Inside screen
    printf '\033P\033]11;#0000AA\033\\'
    printf '\033P\033]10;#AAAAAA\033\\'
else
    # Direct terminal
    printf '\033]11;#0000AA\033\\'
    printf '\033]10;#AAAAAA\033\\'
fi

# For bash prompt colors
export PS1="\[\033[38;5;248m\]\u@\h\[\033[0m\]:\[\033[38;5;226m\]\w\[\033[0m\]\$ "
