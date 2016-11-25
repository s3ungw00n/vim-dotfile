set nu                    " Line number
set tabstop=2							" Size of tab
set hlsearch              " Highlight searched keyword
set incsearch             " Incremental search
syntax on                 " Syntax highlightingcall 

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " FuzzyFinder
call plug#end()

" Fuzzy Search Ctrl+P shortcut
nnoremap <C-p> :FZF<CR>
