### Install Neovim
[Go to Instruction](https://github.com/neovim/neovim/wiki/Installing-Neovim)

### Vim-plug Installation ( https://github.com/junegunn/vim-plug )

[Download plug.vim](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)
and put it in the "autoload" directory.

###### Unix

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

###### Neovim

```sh
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

###### Windows (PowerShell)

```powershell
md ~\vimfiles\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile($uri, $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("~\vimfiles\autoload\plug.vim"))
```

### Copy init.vm

```sh
cp init.vim ~/.config/nvim/
```

### Install Plugins
```sh
nvim

(in neovim)
:PlugInstall
```

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
