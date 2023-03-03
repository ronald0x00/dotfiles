

#!/usr/bin/env zsh



export DOTFILES="$HOME/.dotfiles"
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$XDG_CONFIG_HOME/local/share
export XDG_CACHE_HOME=$XDG_CONFIG_HOME/cache





export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

export EDITOR="nvim"
export VISUAL="nvim"


export XDG_BTOP=XDG_CONFIG_HOME/btop/themes
export BAT_THEME="base16"



export FZF_DEFAULT_COMMAND='fd --type f --color=never --hidden'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"

export FZF_ALT_C_COMMAND='fd --type d . --color=never --hidden'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"
ZSH_THEME="$HOME/Downloads/ZshTheme-ArchCraft/archcraft-dwm.zsh-theme"


FZF_COLORS="bg+:-1,\
fg:white,\
fg+:white,\
border:gray,\
spinner:0,\
hl:yellow,\
header:blue,\
info:green,\
pointer:magenta,\
marker:red,\
prompt:gray,\
hl+:red"

export FZF_DEFAULT_OPTS="--height 60% \
--border sharp \
--color='$FZF_COLORS' \
--prompt '∷ ' \
--pointer ▶ \
--marker ⇒"

