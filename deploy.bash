#!/usr/bin/env bash

echo "Deploying dot_river configs"

cp -rf ./dot_bash_profile $HOME/.bash_profile

cp -rf ./dot_bashrc $HOME/.bashrc

if [ ! -d "$HOME/.fonts" ]; then
	mkdir -p $HOME/.fonts
fi

cp -rf ./dot_fonts/* $HOME/.fonts/

if [ ! -d "$HOME/.config" ]; then
	mkdir -p $HOME/.config
fi

cp -rf ./dot_config/* $HOME/.config/

echo "Done."
