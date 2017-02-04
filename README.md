# UTkarsh's dotfiles

Contains dotfiles for vim and zsh. Not very awesome like other dotfiles on
github but a short and sweet one for a noob like me.


## Prerequisites

#### zsh
This assumes that you have zsh with antigen installed.  
For ubuntu you can use:
```
sudo apt-get install zsh
sudo apt-get install zsh-antigen
```

#### vim
This assumes that you have vim with vundle installed.  
For ubuntu you can use:
```
sudo apt-get install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```


## How to use

Follow these steps:

```
cd ~
mkdir bin
cd bin
git clone https://github.com/UtkarshMe/dotfiles
link ~/bin/dotfiles/zsh/zshrc ~/.zshrc
link ~/bin/dotfiles/vim/vimrc ~/.vimrc
```
