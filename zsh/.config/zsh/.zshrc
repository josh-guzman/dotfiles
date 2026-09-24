zprofile() {
  local name=$1
  local state="${ZDOTDIR:-$HOME}/.zsh_profile"
  if [[ -z $name ]]; then
    echo "${ZSH_PROFILE:-full}"
    return
  fi
  if [[ ! -r "$ZDOTDIR/profiles/${name}.zsh" ]]; then
    echo "zprofile: no such profile '$name'" >&2
    return 1
  fi
  echo "$name" > "$state"
  exec zsh
}

: ${ZSH_PROFILE:=$(cat "${ZDOTDIR:-$HOME}/.zsh_profile" 2>/dev/null || echo full)}

profile_path="$ZDOTDIR/profiles/${ZSH_PROFILE}.zsh"

if [[ -r "$profile_path" ]]; then
  source "$profile_path"
else
  echo "zsh: no such profile '$ZSH_PROFILE', falling back to full" >&2
  source "$ZDOTDIR/profiles/full.zsh"
fi
