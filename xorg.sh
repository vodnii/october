#!/bin/bash
 echo "Установка Xorg в Arch Linux."
 echo "---@---@---@---@---@---@---@---"
 echo "Устанавливаем&"
 echo " Нажми SPACE"
  read item
  case "$item" in
       space)
       ;;
  esac
sudo pacman -S xorg xorg-xinit xorg-apps mesa
Xorg :0 -configure
cp /root/xorg.conf.new /etc/X11/xorg.conf
screenfetch
