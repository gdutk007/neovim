# .bash_profile

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim

# Get the aliases and functions
#if [ -f ~/.bashrc ]; then
#	source ~/.bashrc
#fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin


PATH=$PATH:$HOME/neovim/squashfs-root/usr/bin/

export PATH

#TERM=xterm-256color
TERM=tmux-256color

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

# now set nvim paths
if [ -f "$HOME/neovim/bin/nvim" ]; then
	export PATH="$HOME/neovim/bin:$PATH"
fi

alias vi='nvim'

alias vim='nvim'
