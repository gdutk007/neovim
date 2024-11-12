#!/bin/bash

cd ~/neovim/ 
if [ -d "$HOME/neovim/build/" ]; then
	rm -r build/  # clear the CMake cache
fi


make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim" CMAKE_BUILD_TYPE=RelWithDebInfo
make install
export PATH="$HOME/neovim/bin:$PATH"


