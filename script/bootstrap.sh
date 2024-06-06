#!/usr/bin/env bash

cd "$(dirname "$0")/.." || exit


echo ''

info () {
  printf "\r  [ \033[00;34m..\033[0m ] %s\n" "$1"
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] %s\n" "$1"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] %s\n" "$1"
  echo ''
  exit
}


stow_apply () {
  local dotfile=$1

  if ! stow "$dotfile" -t ~; then
    fail "Failed to apply $dotfile"
  fi

  success "applied $dotfile successfully"
}


install_dotfiles () {
  info "installing dotfiles"
  stow_apply zsh
  stow_apply alacritty
  stow_apply nvim
}

install_dotfiles
