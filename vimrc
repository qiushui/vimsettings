" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" hjw added
colorscheme delek
"highlight Search ctermbg=black ctermfg=yellow term=underline
set nocompatible
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab "replace tab with spaces
set bs=indent,eol,start
set history=50
set autoindent
"set number
set nonu
set hlsearch
set nocursorline
"set cursorline
"set autoread
"set ignorecase
set laststatus=2 "enable status and powerline
set guifont=Menlo\ Regular\ for\ Powerline
" list chars
set listchars=tab:▸\ ,eol:¬
filetype on
filetype plugin on 


" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif


" pathogen
execute pathogen#infect()
filetype plugin indent on

"vim-powerline setting
"set encoding=utf-8
"set nocompatible
"set langmenu=en_US.utf-8
"language messages en_US.utf-8
set t_Co=256 
let g:Powerline_symbols = 'fancy' 
"end of powerline setting

highlight  CursorLine ctermbg=Blue ctermfg=Yellow "cursorline settings have to be loaded after powerline

"neocomplcache settings
let g:neocomplcache_enable_at_startup=1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Tab completion does not work with markdown format, use ctrl + l instead
"inoremap <expr><C-l>     neocomplcache#complete_common_string()
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


