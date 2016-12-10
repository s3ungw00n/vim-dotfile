set nu                    " Line number
set tabstop=2             " Size of tab
set expandtab             " convert all tab input to spaces
retab                     " convert existing tabs to spaces
set shiftwidth=2          " the number of spaces inserted for indention
set hlsearch              " Highlight searched keyword
set incsearch             " Incremental search
syntax on                 " Syntax highlightingcall 

let g:neomake_javascript_enabled_makers = ['eslint']
autocmd! BufWritePost,BufEnter *.js Neomake

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " FuzzyFinder
Plug 'neomake/neomake'
Plug 'jelera/vim-javascript-syntax'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'edkolev/tmuxline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'chrisbra/Colorizer', { 'on': 'ColorToggle' }
call plug#end()

" Fuzzy Search Ctrl+P shortcut
nnoremap <C-p> :FZF<CR>
