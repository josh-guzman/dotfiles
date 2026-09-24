# =========================================================
# History
# =========================================================
HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=110000
SAVEHIST=100000          # if startup feels slow, check `wc -l "$HISTFILE"` —
                          # large history files cost real read time on launch
HISTDUP=erase
HISTTIMEFORMAT="%F %T"

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
unsetopt INC_APPEND_HISTORY   

# =========================================================
# Shell behaviour
# =========================================================
setopt INTERACTIVE_COMMENTS
setopt EXTENDED_GLOB NULL_GLOB
setopt AUTOCD
setopt NOBEEP
setopt NUMERIC_GLOB_SORT   # sort file10 after file9, not after file1
setopt PROMPT_SUBST

bindkey -e
bindkey "^p" history-search-backward
bindkey "^n" history-search-forward

# =========================================================
# Completion
# =========================================================
# autoload -Uz compinit

# zcd="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump"
# mkdir -p "${zcd:h}"

# Full security audit only once every 24h; every other launch skips it (-C)
# if [[ -n ${zcd}(#qN.mh+24) ]]; then
#   compinit -d "$zcd"
# else
#   compinit -C -d "$zcd"
# fi

# Compile the dump to bytecode so sourcing it is near-instant
# if [[ -s "$zcd" && ( ! -s "${zcd}.zwc" || "$zcd" -nt "${zcd}.zwc" ) ]]; then
#   zcompile "$zcd"
# fi

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'  # case-insensitive completion

# =========================================================
# less / man colors
# =========================================================
# Taken from https://gist.github.com/bahamas10/542875bb47990933638d2b7dfaa501bf#file-zz-no-comments-bash
export LESS_TERMCAP_mb=$'\e[1;31m'
export LESS_TERMCAP_md=$'\e[1;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;33;44m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[4;1;32m'
export LESS_TERMCAP_mr=$'\e[7m'
export LESS_TERMCAP_mh=$'\e[2m'
export LESS_TERMCAP_ZN=$'\e[74m'
export LESS_TERMCAP_ZV=$'\e[75m'
export LESS_TERMCAP_ZO=$'\e[73m'
export LESS_TERMCAP_ZW=$'\e[75m'
export MANPAGER='less'

# set -o vi
# autoload -U edit-command-line
# zle -N edit-command-line
# bindkey -M vicmd v edit-command-line
