#!/usr/bin/env bash
set -e

install_config() {
  if [ -d "$HOME/.config" ];then
    set -x
    cp -r ./config/* ~/.config
    set +x
  else
    set -x
    cp -r ./config ~/.config
    set +x
  fi
}

install_local() {
  set -x
  if [ -d "$HOME/.local" ];then
    cp -r ./local/* ~/.local
  else
    cp -r ./local ~/.local
  fi
  set +x
}

install_home() {
  set -x
  cp ./zshrc ~/.zshrc
  cp ./xinitrc ~/.xinitrc
  cp ./Xresources ~/.Xresources
  cp -r ./.zsh ~/.zsh
  cp -r ./.fonts ~/.fonts
  cp -r ./.themes ~/.themes
  cp -r ./.newsboat ~/.newsboat
  set +x
}

functions=(install_config install_local install_home)
questions=(
  "(~/.config) Install Config Folders? [Y/n] "
  "(~/.local) Install Local Folders? [Y/n] "
  "(~) Install Home Folders? [Y/n] "
)

for ((i=0;i<=${#functions[@]}-1;i++));do 
  read -p "${questions[$i]}" choice
  case $choice in
    (Y|y) ${functions[i]} ;;
    (*) echo "Skipping Step..." ;;
  esac
  unset choice
done
