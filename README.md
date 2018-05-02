# vimrc

- symlink  
``ln -sf ~/[repo path]/vimrc/.vimrc ~/.vimrc``

- clone vundle  
``git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim``

- install plugin  
``vim +PluginInstall +qall``  

if color scheme not found  
``cp ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/``  

- YCM  
``sudo apt-get install build-essential cmake``  
``sudo apt-get install python-dev python3-dev``  
``cd ~/.vim/bundle/YouCompleteMe``  
``./install.py --all``  
``cp ~/[repo path]/vimrc/.tern-config ~/``


