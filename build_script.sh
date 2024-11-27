#!/bin/bash

build_arg=0
cd ~/neovim/ 

if [ "$1" == "build" ]; then
	echo "we are trying to build"
	build_arg=1
fi
    
if [ -d "$HOME/neovim/build/" ]; then
	rm -r build/  # clear the CMake cache
fi


if [ $build_arg -eq 1 ]; then
	make clean
	make -j`nproc` CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim" CMAKE_BUILD_TYPE=RelWithDebInfo
	make install
fi

if [ -f "$HOME/.bash_profile" ]; then
        cat ./my-neovim-config/.bash_profile >> "$HOME/.bash_profile" 
fi

if [ -f "$HOME/.bash_aliases" ]; then
        cat ./my-neovim-config/.bash_profile >> "$HOME/.bash_aliases" 
fi

if [ ! -d  "$HOME/.config/" ]; then
    mkdir -p "$HOME/.config/"
fi

if [ ! -d  "$HOME/.config/nvim/" ]; then
  if [ ! -f "$HOME/.config/nvim/init.vim" ]; then
      pushd my-neovim-config/ 
      cp -r nvim/ "$HOME/.config/" 
      popd
  fi
fi
cp my-neovim-config/.tmux.conf $HOME/

