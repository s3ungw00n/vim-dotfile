### Iterm2 Setup
https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961

### Install neovim
```sh
git config --global core.quotepath false
brew install neovim
```
[Go to Instruction](https://github.com/neovim/neovim/wiki/Installing-Neovim)


### Vim-plug Installation
```sh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
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
#### vim config
```sh
curl -fLo ~/.config/nvim/init.vim --create-dirs \
     https://raw.githubusercontent.com/mazicky/vim-dotfile/master/init.vim
```
#### zshrc
```sh
curl -fLo ~/.zshrc --create-dirs \
     https://raw.githubusercontent.com/mazicky/vim-dotfile/master/.zshrc
```

### Install Plugins
```sh
(in vim)
:PlugInstall
```

### 한글입력 시 원화 대신 ` 입력 및 ESC 누르면 영문으로 변환

구름입력기 옵션을 이용 - http://gureum.io/
