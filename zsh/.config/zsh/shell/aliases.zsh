# =========================================================
# Utilities
# =========================================================
alias c='clear -x'
# alias ls='eza --classify --icons always'
# alias ll='eza -lhF --classify --icons always'
# alias la='eza -lahF --classify --icons always'
alias ls="gls --color=always"
alias la="ls -lah"
alias tree='eza --tree --icons always'
alias cat='bat -pn'
alias grep='ggrep --color=always' # use gnu grep: `brew install coreutils`
alias diff='diff --color=auto'
alias df='df -h'
alias less='less -R'
alias ping='ping -c 10'
alias cp='cp -iv'
alias mv='mv -iv'
alias gcc='gcc -Wall -Wextra -Werror -pedantic -O2 -std=c99'
alias update_packages='brew update; brew upgrade; brew upgrade --cask; brew cleanup'
alias ta='tmux attach'
alias tn='tmux new -s '
alias termclock='tty-clock -c -C 4 -S'
alias screensaver='unimatrix -c blue -l b'
alias hss='hugo server --buildDrafts --noHTTPCache'
# alias nv="NVIM_APPNAME=nvim_native nvim"
alias b='bookmarkthis'
alias sn="snippets"

alias cx='chmod u+x'

# =========================================================
# Navigation
# =========================================================
alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

# =========================================================
# Git
# =========================================================
alias g='git status'
alias gs='git status -sb'
alias ga='git add'
alias gaa='git add -A'
alias gd='git diff'
alias gb='git branch'
alias gc='git commit -m'
alias gp='git push'
alias gm='git checkout master'
alias glog='PAGER="less -F -X" git log'
alias gdog='git log --all --decorate --oneline --graph'
alias gadog='PAGER="less -F -X" git log --all --decorate --oneline --graph'

# =========================================================
# Functions
# =========================================================
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}

function take() { mkdir -p "$1" && cd "$1"; }
function mkproj() { mkdir "$1" && cd "$1" && git init; }
function reload() { . "$ZDOTDIR/.zshrc"; }
alias vf='nvim $(fd --type f --hidden --exclude .git | fzf -m --prompt="Open file(s) > ")'

function print_header() {
  local label="# $1 "
  local width=42
  local pad=$(( width - ${#label} ))
  printf '%s' "$label"
  printf '═%.0s' $(seq 1 $pad)
  printf '\n'
}

function randpw() {
    # default length, 24
    len=24
    if [ ! -z "$1" ]; then
        len="$1"
    fi
    </dev/urandom tr -dc '12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c$len; echo ""
}

function entercontainer() {
    docker start $1
    docker exec -it -u admin -w /home/admin $1 bash
}
