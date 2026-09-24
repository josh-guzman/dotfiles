#          _
#         | |
#  _______| |__  _ __ ___
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__
# /___|___/_| |_|_|  \___|
#

# Author: jgthecoder <jgthecoder@gmail.com>
# Date: June 2026
# License: MIT

source "$HOME/.config/zsh/shell/zsh-defer/zsh-defer.plugin.zsh"

# function source_if_exists () {
#   [ -f "$1" ] && source "$1"
# }

source "$XDG_CONFIG_HOME/zsh-plugins/fsh/fast-syntax-highlighting.plugin.zsh"
source "$ZDOTDIR/shell/options.zsh"
source "$ZDOTDIR/shell/aliases.zsh"
source <(fzf --zsh)
zsh-defer source "$ZDOTDIR/shell/fzf.zsh"
zsh-defer eval "$(zoxide init zsh)"
source "$ZDOTDIR/shell/prompt.zsh"
