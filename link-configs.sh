#!/bin/bash

# Get vundle.
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mv ~/.vimrc ~/.vimrc-backup
ln -s ~/.config/configs/.vimrc ~/.vimrc

# Install i3 configs.
mv ~/.config/i3/config ~/.config/i3/config-backup
ln -s ~/.config/configs/config ~/.config/i3/config

# Install ZSH configs
mv ~/.zshrc ~/.zshrc-backup
ln -s ~/.config/configs/.zshrc ~/.zshrc

# TMUX configs
mv ~/.tmux.conf ~/.tmux.conf-backup
ln -s ~/.config/configs/.tmux.conf ~/.tmux.conf

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Alacritty configs
mv ~/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml-backup 
ln -s ~/.config/configs/alacritty.yml ~/.config/alacritty/alacritty.yml 

# FZF config
mv ~/.fzf.zsh ~/.fzf.zsh-backup
ln -s ~/.config/configs/.fzf.zsh ~/.fzf.zsh


