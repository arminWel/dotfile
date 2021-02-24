export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR="nvim"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER="firefox"
export TERMINAL="alacritty"
export XDG_CONFIG_HOME=$HOME/.config
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
export GPG_AGENT_INFO=gpg #mutt may break otherwise
