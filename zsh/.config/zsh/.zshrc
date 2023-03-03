
source $HOME/.zshenv
export PATH=$HOME/.local/bin/:$PATH







# %------------------%
# | CHANGE DIRECTORY |
# %------------------%

setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT
setopt EXTENDED_GLOB



# %---------%
# | HISTORY |
# %---------%


setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.


fpath=($DOTFILES/zsh/.config/zsh/prompt $fpath)

source $DOTFILES/zsh/.config/zsh/prompt/simple-theme.zsh

source $HOME/.config/aliases/aliases

source $HOME/.config/zsh/utils/completion.zsh

source $HOME/.config/zsh/utils/vi-mode.zsh

source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [ $(command -v "fzf") ]; then
    source $HOME/.config/zsh/utils/fzf.zsh
fi


