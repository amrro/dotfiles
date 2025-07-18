# load configs

for config in ~/.config/zsh/*.zsh; do
    [ -r "$config" ] && source "$config"
done


. "$HOME/.cargo/env"
eval "$(atuin init zsh)"
export GPG_TTY=$(tty)


[ -f "/Users/amrro/.ghcup/env" ] && . "/Users/amrro/.ghcup/env" # ghcup-env