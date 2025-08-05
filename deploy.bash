#!/usr/bin/env bash

echo "Deploying dot_river configs"

sudo cp ./dot_bash_profile $HOME/.bash_profile

sudo cp ./dot_bashrc $HOME/.bashrc

if [ ! -d "$HOME/.fonts" ]; then
	mkdir -p $HOME/.fonts
fi

sudo cp -r ./dot_fonts/* $HOME/.fonts/

if [ ! -d "$HOME/.config" ]; then
	mkdir -p $HOME/.config
fi

sudo cp -r ./dot_config/* $HOME/.config/

echo "Done."
