set runtimepath+=~/dotfiles/vim

" Don't use vi settings
set nocompatible
set encoding=utf-8

" pathogen
call pathogen#infect('~/dotfiles/vim/bundle/')

" spell check
autocmd BufRead *.md setlocal spell spelllang=en_us

" column 80
:set colorcolumn=80

" Turn on line numbering. Turn it off with "set nonu" 
set rnu
au InsertEnter * :set nu
au InsertLeave * :set rnu
au FocusLost * :set nu
au FocusGained * :set rnu

" allow plugin, indent, etc
filetype off
filetype plugin indent on
set autoindent

" (Sometimes) case insensitive search
set ic
set smartcase

" Higlhight search
set hls

syntax enable

colorscheme solarized

set background=dark

" change solarized color with f5
call togglebg#map("<F5>")

set guifont=Menlo:h14

" Allow jj to trigger ESC
imap jj <Esc>

" Map leader to ,
let mapleader = ","

" Use spaces instead of tab
set expandtab
set tabstop=2
set shiftwidth=2 
set softtabstop=2

" Allow backspaces
set backspace=indent,eol,start

" In many terminal emulators the mouse works just fine
if has('mouse')
  set mouse=a
endif

" Get rid of bell
set noerrorbells
set visualbell
set t_vb=

" word wrap
set wrap
set linebreak
set nolist  " list disables linebreak
set lbr " Wrap text instead of being on one line

" Don't start with folds
set foldlevelstart=99
set foldlevel=99

" compile commands
map ,g :!grunt
map ,m :!make

" if md or txt file, set type markdown
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.txt set filetype=markdown

" Wordcount
map ,wc :w !wc <CR>

" paste, no paste
map ,sp :set paste <CR>
map ,snp :set nopaste <CR>

" copy paste
nmap <C-A-V> "+gP
imap <C-A-V> <ESC><C-A-V>i
vmap <C-A-C> "+y 

if has("gui_running")
    set guioptions=egmrt
    set lines=40
endif

" switch window
map gw <C-w>w
map GW <C-w>W

" switch tab
map GT gT

" autocomplete mode
set wildmode=list:longest,list:full
