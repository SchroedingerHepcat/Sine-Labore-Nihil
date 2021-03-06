#! /bin/bash

# Check if git repository exists, if not, clone it
mkdir -p $HOME/git
if [ ! -e $HOME/git/Sine-Labore-Nihil ]; then
   git clone git@github.com:SchroedingerHepcat/Sine-Labore-Nihil.git \
             $HOME/git/Sine-Labore-Nihil
fi

installTime=$(date +%Y%m%d-%H%M%S)


# Back up environment
if [ -e $HOME/.bashrc ]; then
   mv $HOME/.bashrc $HOME/.bashrc.bak-preSineLaboreNihil-$installTime
fi
if [ -e $HOME/.bash_aliases ]; then
   mv $HOME/.bash_aliases $HOME/.bash_aliases.bak-preSineLaboreNihil-$installTime
fi
if [ -e $HOME/.bash_logout ]; then
   mv $HOME/.bash_logout $HOME/.bash_logout.bak-preSineLaboreNihil-$installTime
fi
if [ -e $HOME/.inputrc ]; then
   mv $HOME/.inputrc $HOME/.inputrc.bak-preSineLaboreNihil-$installTime
fi
if [ -e $HOME/.vimrc ]; then
   mv $HOME/.vimrc $HOME/.vimrc.bak-preSineLaboreNihil-$installTime
fi
if [ -e $HOME/.vim ]; then
   mv $HOME/.vim $HOME/.vim.bak-preSineLaboreNihil-$installTime
fi
if [ -e $HOME/scripts ]; then
   mv $HOME/scripts $HOME/scripts.bak-preSineLaboreNihil-$installTime
fi
if [ -e $HOME/.pythonrc ]; then
   mv $HOME/.pythonrc $HOME/.pythonrc.bak-preSineLaboreNihil-$installTime
fi
if [ -e $HOME/.tmux.conf ]; then
   mv $HOME/.tmux.conf $HOME/.tmux.conf.bak-preSineLaboreNihil-$installTime
fi
if [ -e $HOME/.i3status.conf ]; then
   mv $HOME/.i3status.conf $HOME/.i3status.conf.bak-preSineLaboreNihil-$installTime
fi
if [ -e $HOME/.i3/config ]; then
   mv $HOME/.i3/config $HOME/.i3/config-preSineLaboreNihil-$installTime
fi

# Link environment
ln -s $HOME/git/Sine-Labore-Nihil/bash/bashrc $HOME/.bashrc
ln -s $HOME/git/Sine-Labore-Nihil/bash/bash_aliases $HOME/.bash_aliases
ln -s $HOME/git/Sine-Labore-Nihil/bash/bash_logout $HOME/.bash_logout
ln -s $HOME/git/Sine-Labore-Nihil/bash/inputrc $HOME/.inputrc
ln -s $HOME/git/Sine-Labore-Nihil/vim $HOME/.vim
ln -s $HOME/git/Sine-Labore-Nihil/vim/vimrc $HOME/.vimrc
ln -s $HOME/git/Sine-Labore-Nihil/scripts $HOME/scripts
ln -s $HOME/git/Sine-Labore-Nihil/python/pythonrc $HOME/.pythonrc
ln -s $HOME/git/Sine-Labore-Nihil/tmux/tmux.conf $HOME/.tmux.conf
ln -s $HOME/git/Sine-Labore-Nihil/i3/i3status.conf $HOME/.i3status.conf

if [ ! -d $HOME/.i3 ]; then
    mkdir $HOME/.i3
fi
ln -s $HOME/git/Sine-Labore-Nihil/i3/i3config $HOME/.i3/config
