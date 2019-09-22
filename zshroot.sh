#!/usr/bin/env bash

# autor: Jedielson da Fonseca (synx.video.blog / diolinux.com.br / jedifn7@gmail.com)
# descrição: Importa as configurações do OhMyZshell para o usuário "root". 
# versão: 1.0

sudo cp /home/$USER/.zshrc /root
sudo cp -r /home/$USER/.oh-my-zsh /root
sudo sed -i "s/$USER/tempuser/g" /root/.zshrc
sudo sed -i 's#export ZSH="/home/tempuser/.oh-my-zsh"#export ZSH="/root/.oh-my-zsh"#g' /root/.zshrc
zenity --info --title="OhMyZsh to Root" --text="Operação concluída." --width=200 --height=100