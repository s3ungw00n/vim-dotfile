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
```

### Dotfile installation

```sh
curl -fLo ~/.config/nvim/init.vim --create-dirs \
     https://raw.githubusercontent.com/mazicky/vim-dotfile/master/init.vim
```

### alias v, vi, vim
```sh
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
```

### Install Plugins
```sh
(in neovim)
:PlugInstall
```

### Set Color Preset of Iterm2

Set color preset of your terminal to proper one with NeoSolarized

### Mac Input source switch setting (Thanks to [this blog post](http://yisangwook.tumblr.com/post/106780445189/vim-insert-mode-keyboard-switch))

```sh
git clone https://github.com/vovkasm/input-source-switcher.git
cd input-source-switcher
mkdir build
cd build
cmake ..
make
make install
```
