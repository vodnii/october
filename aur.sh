#!/bin/bash
 echo "Установка yaourt в Arch Linux."
 echo "---@---@---@---@---@---@---@---"
 echo "Устанавливаем дополнительные зависимости и используя репозиторий AUR скачиваем и собираем package-query, а затем yaourt."
 echo " Нажми SPACE"
  read item
  case "$item" in
       space)
       ;;
  esac
sudo pacman -S --needed base-devel git wget yajl
cd /tmp
git clone https://aur.archlinux.org/package-query.git
cd package-query/
makepkg -si
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt/
makepkg -si
cd ..
sudo rm -dR yaourt/ package-query/
screenfetch
