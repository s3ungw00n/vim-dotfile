set nu
set nornu
set wildmenu
" Use intelligent case while searching.
" If search string contains an upper case letter, disable ignorecase.
set smartcase
set incsearch " Incremental search
set hlsearch " Higlihts search results

" Identation
set autoindent " Copy indent from current line when starting a new line
set smarttab
set tabstop=4
set expandtab
retab
set shiftwidth=4
syntax on
filetype plugin indent on " required!
set t_Co=256 " 256 color mode in term
set autoread " ReaLoad a file if was changed outside of Vim
set cc=80 " Highlight column at 80
set nowrap " Enable line wrapping.

call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'iCyMind/NeoSolarized'
Plug 'airblade/vim-gitgutter'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'neovim/node-host', { 'do': 'npm install' }
Plug 'billyvg/tigris.nvim', { 'do': './install.sh' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/syntastic'
Plug 'editorconfig/editorconfig-vim'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'skammer/vim-css-color'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-fugitive'
" Plug 'pangloss/vim-javascript'
Plug 'alvan/vim-closetag'
call plug#end()

let g:deoplete#enable_at_startup = 1
autocmd BufRead,BufNewFile *.vue setfiletype html
autocmd FileType html syntax sync fromstart

" NeoSolarized Theme
colorscheme NeoSolarized
set background=dark

" Shortcuts
map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>
map <C-l> :Ag<CR>
