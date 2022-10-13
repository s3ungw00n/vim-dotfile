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

set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-surround'
Plug 'APZelos/blamer.nvim'
Plug 'rhysd/git-messenger.vim'
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'vim-test/vim-test'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'vim-python/python-syntax'  " Python f-string value syntax highlighting
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }. " More python syntax highlighting
call plug#end()

let g:deoplete#enable_at_startup = 1
autocmd BufRead,BufNewFile *.vue setfiletype html
autocmd FileType html syntax sync fromstart
let g:vue_disable_pre_processors=1

" NeoSolarized Theme
" set background=dark
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext
let g:airline_theme='oceanicnext'

" Shortcuts
map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>
map <C-l> :Ag<CR>

" VIMWiki
let g:vimwiki_list = [
    \{
    \   'path': '[YOUR WIKI DIRECTORY]',
    \   'ext' : '.md',
    \   'diary_rel_path': '.',
    \},
\]

" Leader key is like a command prefix. 
let mapleader=','
" let maplocalleader='\'
"

let g:md_modify_disabled = 0
function! LastModified()
    if g:md_modify_disabled
        return
    endif
    if &modified
        let save_cursor = getpos(".")
        let n = min([10, line("$")])
        exe 'keepjumps 1,' . n . 's#^\(.\{,10}updated\s*: \).*#\1' . strftime('%Y-%m-%d %H:%M:%S +0900') . '#e'
        call histdel('search', -1)
        call setpos('.', save_cursor)
        echo('markdown updated time modified')
    endif
endfunction

function! NewTemplate()
    let l:wiki_directory = v:false

    for wiki in g:vimwiki_list
        if expand('%:p:h') == wiki.path
            let l:wiki_directory = v:true
            break
        endif
    endfor

    if !l:wiki_directory
        return
    endif

    if line("$") > 1
        return
    endif

    let l:template = []
    call add(l:template, '---')
    call add(l:template, 'layout  : wiki')
    call add(l:template, 'title   : ')
    call add(l:template, 'summary : ')
    call add(l:template, 'date    : ' . strftime('%Y-%m-%d %H:%M:%S +0900'))
    call add(l:template, 'updated : ' . strftime('%Y-%m-%d %H:%M:%S +0900'))
    call add(l:template, 'tags    : ')
    call add(l:template, 'toc     : true')
    call add(l:template, 'public  : true')
    call add(l:template, 'parent  : ')
    call add(l:template, 'latex   : false')
    call add(l:template, '---')
    call add(l:template, '* TOC')
    call add(l:template, '{:toc}')
    call add(l:template, '')
    call add(l:template, '# ')
    call setline(1, l:template)
    execute 'normal! G'
    execute 'normal! $'

    echom 'new wiki page has created'
endfunction

augroup vimwikiauto
    autocmd BufWritePre *wiki/*.md call LastModified()
    autocmd BufRead,BufNewFile *wiki/*.md call NewTemplate()
augroup END

let g:vimwiki_conceallevel = 0
let g:markdown_syntax_conceal = 0
autocmd BufEnter,BufRead,BufNewFile *.md set filetype=markdown
