set nu
set tabstop=4
set expandtab
retab
set shiftwidth=4
syntax on

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
call plug#end()

let g:deoplete#enable_at_startup = 1

" NeoSolarized Theme
colorscheme NeoSolarized
set background=dark

" Shortcuts
map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>
