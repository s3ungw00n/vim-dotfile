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

### Set Color Preset of Iterm2

Set color preset of your terminal to proper one with NeoSolarized

### 한글입력하다가 ESC 누르면 영문으로 변환

[Download HammerSpoon](https://github.com/Hammerspoon/hammerspoon)

```
function reload()
    hs.reload()
    hs.notify.new({title="해머스푼", informativeText="리로드 완료"}):send()
end
hs.hotkey.bind({'cmd', 'shift', 'ctrl'}, 'R', reload)

function goToNormalModeAtOnceOnHangle()
    local inputEnglish = "com.apple.keylayout.ABC"
    local input_source = hs.keycodes.currentSourceID()

    if not (input_source == inputEnglish) then
        hs.eventtap.keyStroke({}, 'right')
        hs.keycodes.currentSourceID(inputEnglish)
    end

    hs.eventtap.keyStroke({'control'}, 'c')
end

hs.hotkey.bind({}, 'escape', goToNormalModeAtOnceOnHangle)
```

