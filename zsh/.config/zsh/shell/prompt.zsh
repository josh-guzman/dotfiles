# --- palette ---
typeset -g MONO_PATH='#7C9CBF'      # muted slate blue — current directory
typeset -g MONO_BRANCH='#8FA876'    # muted sage green — git branch
# typeset -g MONO_SYMBOL='#6C6C6C'    # neutral grey — prompt symbol
typeset -g MONO_SYMBOL='#C9B458'    
typeset -g MONO_MUTED='#4D4D4D'     # dim grey — connective text (e.g. "on")

HOST_NAME='mbair'

# --- git ---
# autoload -Uz vcs_info
# zstyle ':vcs_info:*' enable git
# zstyle ':vcs_info:git:*' formats "%f%F{$MONO_MUTED}on %f%F{$MONO_BRANCH} %b%f "
# precmd() { vcs_info }

# --- prompt ---
# PROMPT='%B%F{$MONO_PATH}%3~ %f%F{$MONO_MUTED}on %f${vcs_info_msg_0_}%F{$MONO_SYMBOL}%(#.#.)%f%b '
# PROMPT='%B%F{$MONO_PATH}%3~ ${vcs_info_msg_0_}%F{$MONO_SYMBOL}%(#.#.󱐋)%f%b ' # old 
# PROMPT='%F{$MONO_PATH}%3~%f %F{$MONO_SYMBOL}%(#.#.󰄾)%f ' # current

ZLE_RPROMPT_INDENT=0

# RPROMPT='%F{$MONO_MUTED}%T%f'
PROMPT='%B[%F{$MONO_BRANCH}%n@$HOST_NAME%f%B:%B%F{$MONO_PATH}%~%f]%b$ '
