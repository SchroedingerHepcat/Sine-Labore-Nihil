#! /bin/bash

# Check if git repository exists, if not, clone it
mkdir -p $HOME/git
if [ ! -e $HOME/git/Sine-Labore-Nihil ]; then
   git clone git@github.com:SchroedingerHepcat/Sine-Labore-Nihil.git \
             $HOME/git/Sine-Labore-Nihil
fi

# Back up environment
if [ -e $HOME/.bashrc ]; then
   mv $HOME/.bashrc $HOME/.bashrc.bak-preSineLaboreNihil
fi
if [ -e $HOME/.bash_aliases ]; then
   mv $HOME/.bash_aliases $HOME/.bash_aliases.bak-preSineLaboreNihil
fi
if [ -e $HOME/.bash_history ]; then
   mv $HOME/.bash_history $HOME/.bash_history.bak-preSineLaboreNihil
fi
if [ -e $HOME/.bash_logout ]; then
   mv $HOME/.bash_logout $HOME/.bash_logout.bak-preSineLaboreNihil
fi
if [ -e $HOME/.inputrc ]; then
   mv $HOME/.inputrc $HOME/.inputrc.bak-preSineLaboreNihil
fi
if [ -e $HOME/.vimrc ]; then
   mv $HOME/.vimrc $HOME/.vimrc.bak-preSineLaboreNihil
fi
if [ -e $HOME/.vim ]; then
   mv $HOME/.vim $HOME/.vim.bak-preSineLaboreNihil
fi
if [ -e $HOME/scripts ]; then
   mv $HOME/scripts $HOME/scripts.bak-preSineLaboreNihil
fi
if [ -e $HOME/.pythonrc ]; then
   mv $HOME/.pythonrc $HOME/.pythonrc.bak-preSineLaboreNihil
fi

# Link environment
ln -s $HOME/git/Sine-Labore-Nihil/bash/bashrc $HOME/.bashrc
ln -s $HOME/git/Sine-Labore-Nihil/bash/bash_aliases $HOME/.bash_aliases
ln -s $HOME/git/Sine-Labore-Nihil/bash/bash_history $HOME/.bash_history
ln -s $HOME/git/Sine-Labore-Nihil/bash/bash_logout $HOME/.bash_logout
ln -s $HOME/git/Sine-Labore-Nihil/bash/inputrc $HOME/.inputrc
ln -s $HOME/git/Sine-Labore-Nihil/vim $HOME/.vim
ln -s $HOME/git/Sine-Labore-Nihil/vim/vimrc $HOME/.vimrc
ln -s $HOME/git/Sine-Labore-Nihil/scripts $HOME/scripts
ln -s $HOME/git/Sine-Labore-Nihil/python/pythonrc $HOME/.pythonrc
