#!/bin/bash

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	   
#sudo pacman -S --needed --noconfirm cpanminus

# cat >> ~/.bashrc << EOF
# export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
# export PATH="$PATH:$GEM_HOME/bin"
# EOF

# cat >> ~/.zshrc << EOF
# export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
# export PATH="$PATH:$GEM_HOME/bin"
# EOF
sudo npm install -g neovim

#sudo cpanm -n Neovim::Ext
#sudo cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
pip install jedi
pip install pynvim --upgrade
gem install neovim
#gem list
#gem environment
#gem update
