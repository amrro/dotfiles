#█▓▒░ preferred text editor
#export EDITOR=nvim
#export VISUAL=nvim

# pnpm
export PNPM_HOME="/Users/amrro/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
