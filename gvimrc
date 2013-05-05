" setting appearance
colorscheme codeschool
set guifont=Menlo\ 16
set guioptions-=m
set guioptions-=T
set lines=36
set columns=115

"highlight Search ctermbg=black ctermfg=yellow term=underline
set nocompatible
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab "replace tab with spaces
set bs=indent,eol,start
set history=50
set autoindent
set nonu
set hlsearch
set nocursorline
set laststatus=2 "enable status and powerline
" list chars
set listchars=tab:▸\ ,eol:¬
filetype on
filetype plugin on 

" pathogen
execute pathogen#infect()
filetype plugin indent on

"vim-powerline setting
set encoding=utf-8
set nocompatible
set t_Co=256 
let g:Powerline_symbols = 'fancy' 
"end of powerline setting


"neocomplcache settings
let g:neocomplcache_enable_at_startup=1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Tab completion does not work with markdown format, use ctrl + l instead
inoremap <expr><C-l>     neocomplcache#complete_common_string()
"end of neocomplcache setting


"vim-surroung setting
" vim-surround settings
let g:surround_indent = 1
"end of vim-surround setting


"markdown preview setting
" markdown preview
let g:markdown_command='/usr/bin/markdown'
"end of markdown setting


"vimwiki setting
" vimwiki
let g:vimwiki_list = [{'path':'/home/hjw/Dropbox/vimwiki', 'path_html':'/home/hjw/Dropbox/vimwiki/diy'}]
" Go to last edit line
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
"end of vimwiki setting


"vimim settings
:let g:vimim_map='c-bslash'
"end of vimim settings
