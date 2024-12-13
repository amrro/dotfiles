# Set history file location
HISTFILE=~/.zsh_history


# Set maximum number of lines kept in history file
HISTSIZE=100000
SAVEHIST=100000

# Share history across terminals immediately
setopt inc_append_history       # Appends commands to history file immediately after execution
setopt share_history            # Shares history across all open terminals


# Avoid duplicate entries
setopt hist_ignore_dups         # Ignore duplicate commands in history
setopt hist_ignore_all_dups     # Remove older duplicate entries when saving
setopt hist_reduce_blanks       # Remove blank spaces from history entries
