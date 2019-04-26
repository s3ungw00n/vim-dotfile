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
set cc=120 " Highlight column at 120 
set nowrap " Enable line wrapping.

set nocompatible

call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'neovim/node-host', { 'do': 'npm install' }
Plug 'billyvg/tigris.nvim', { 'do': './install.sh' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/syntastic'
Plug 'editorconfig/editorconfig-vim'
Plug 'davidhalter/jedi-vim'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'skammer/vim-css-color'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-fugitive'
" Plug 'pangloss/vim-javascript'
Plug 'alvan/vim-closetag'
Plug 'mhartington/oceanic-next'
" Plug 'posva/vim-vue'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'mhinz/vim-startify'
Plug 'janko-m/vim-test'
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
    \   'path': [WIKI_PATH],
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

    echo('markdown updated time modified???')
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
    autocmd BufWritePre *_posts/*.md call LastModified()
    autocmd BufRead,BufNewFile *wiki/*.md call NewTemplate()
    autocmd BufRead,BufNewFile *_posts/*.md call NewTemplate()
augroup END

let g:vimwiki_conceallevel = 0
let g:markdown_syntax_conceal = 0
autocmd BufEnter,BufRead,BufNewFile *.md set filetype=markdown

let g:airline_section_b = '%{strftime("%Y/%m/%d-%H:%M")}'
" let g:vimwiki_folding = 'list'
let g:vimwiki_folding = 'expr'

let g:jedi#use_splits_not_buffers = "right"
"" autocmd FileType python setlocal completeopt-=preview
