### Install Neovim
[Go to Instruction](https://github.com/neovim/neovim/wiki/Installing-Neovim)

### Vim-plug Installation ( https://github.com/junegunn/vim-plug )

[Download plug.vim](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)
and put it in the "autoload" directory.
```sh
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

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

```sh
curl -fLo ~/.config/nvim/init.vim --create-dirs \
     https://raw.githubusercontent.com/mazicky/vim-dotfile/master/init.vim
```

### alias v to vim
```sh
echo -e "alias v=\"nvim\"\n" >> ~/.zshrc
```

### Install Plugins
```sh
(in neovim)
:PlugInstall
```

### Set Color Preset of Iterm2

Set color preset of your terminal to proper one with NeoSolarized

### 한글입력하다가 ESC 누르면 영문으로 변환

http://gureum.io/
