if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    atuin init fish | source
end

# Disable the fish greeting message
set fish_greeting ""

# Setup brew
eval "$(/opt/homebrew/bin/brew shellenv)"

set -Ux EDITOR nvim

### abbreviation ###
# `ls` → `ls -laG` abbreviation.
abbr -a -g ls ls -laG

# `pm` → `pnpm` abbreviation.
abbr -a -g pm pnpm

# `vm` → `nvim` abbreviation.
abbr -a -g vm nvim

# pnpm
set -gx PNPM_HOME /Users/amrro/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

fnm env --use-on-cd --shell fish | source

# uv
fish_add_path "/Users/amrro/.local/bin"
