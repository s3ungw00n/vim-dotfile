set nu

set autoread " ReaLoad a file if was changed outside of Vim
set cc=80 " Highlight column at 80
set autoindent " turns it on
set smartindent " does the right thing (mostly) in programs

set nocompatible
syntax on

set tabstop=4
set shiftwidth=4
filetype plugin on
autocmd Filetype typescript setlocal shiftwidth=2 softtabstop=2
autocmd Filetype typescriptreact setlocal shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal shiftwidth=2 softtabstop=2
autocmd Filetype react setlocal shiftwidth=2 softtabstop=2
autocmd Filetype svelte setlocal shiftwidth=2 softtabstop=2
autocmd Filetype vue setlocal shiftwidth=2 softtabstop=2
set expandtab

" plugins
call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin' => excluded on 2022/11 due to bug
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'tpope/vim-surround'
Plug 'vim-python/python-syntax'
call plug#end()

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-l> :Rg<CR>

let g:python_highlight_all = 1

try 
    source ~/.config/nvim/vimwiki.nvim
catch

endtry
try 
    source ~/.config/nvim/coc.nvim
    " CocInstall coc-tsserver coc-pyright coc-json
    " pip install django-stubs djangorestframework-stubs
    " CocConfig => python.linting.flake8Enabled = true , pip install flake8
catch
endtry
