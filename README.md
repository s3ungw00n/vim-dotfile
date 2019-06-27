### Iterm2
https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961

### Install vim
#### MacVim
[MacVim Homepage](https://macvim-dev.github.io/macvim/)

#### NeoVim
```sh
git config --global core.quotepath false
brew install neovim
```
[Go to Instruction](https://github.com/neovim/neovim/wiki/Installing-Neovim)


### Vim-plug Installation
[Install Vim-Plug](https://github.com/junegunn/vim-plug#installation)


### Install OS Packages
```sh
brew install fzf
/usr/local/opt/fzf/install
brew install the_silver_searcher

(and python packages)
pip install neovim
pip install pynvim --upgrade
```

### Dotfile installation

#### MacVim
```sh
curl -fLo ~/.vimrc --create-dirs \
     https://raw.githubusercontent.com/mazicky/vim-dotfile/master/.vimrc
```

#### Neovim
```sh
curl -fLo ~/.config/nvim/init.vim --create-dirs \
     https://raw.githubusercontent.com/mazicky/vim-dotfile/master/init.vim
```

### Install Plugins
```sh
(in vim)
:PlugInstall
```

### 한글입력 시 원화 대신 ` 입력 및 ESC 누르면 영문으로 변환

구름입력기 옵션을 이용 - http://gureum.io/
