" Plugins
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" User Plugins
Plugin 'sjl/badwolf'
Plugin 'itchyny/lightline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" -------------------------------------------------------------------------------------- "
" Settings
" -------------------------------------------------------------------------------------- "

" 4 Spaces instead of tabs"
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Line number"
set number relativenumber

" Disable line wrap"
set nowrap

" Highlight matching brackets "
set showmatch 

" Enable wildmenu "
set wildmenu

" setup the search such that if the pattern contains an uppercase letter, it
" is case sensitive, otherwise, it is not
set ignorecase
set smartcase

" disable beeping
set vb t_vb=

" -------------------------------------------------------------------------------------- "
" Custom commands " 
" -------------------------------------------------------------------------------------- "

function! RemoveTrailingWhitespacesFunction() 
    execute "normal! mz" 
    silent %s/\s\+$//ge 
    execute "normal! 'z" 
endfunction 
command! RemoveTrailingWhitespaces call RemoveTrailingWhitespacesFunction() 
function! ShrugFunction() 
    execute "normal i¯\\_(?)_/¯" 
endfunction 
command! Shrug call ShrugFunction() 

" -------------------------------------------------------------------------------------- "
" Remaps 
" -------------------------------------------------------------------------------------- "

" Yank rest of line "
nmap Y y$
" Center after next paragraph "
nmap } }zz
" Go to end of line when end of file "
nmap G G$

" Enable syntax highlight "
syntax on

" -------------------------------------------------------------------------------------- "
" Swap settings 
" -------------------------------------------------------------------------------------- "

"" Store swp in central locations "
if has("win32")
    set dir=~/vimswap//
    set backupdir=~/vimbackup//
    set undodir=~/vimundo//
else
    set dir=~/.vimswap//
    set backupdir=~/.vimbackup//
    set undodir=~/.vimundo//
endif

" -------------------------------------------------------------------------------------- "
" Clipboard settings 
" -------------------------------------------------------------------------------------- "

" share clipboard with system
if has('win32unix')
    set clipboard=unnamed
elseif has('win32')
    set clipboard=unnamed
else
    if !has("nvim")
        set clipboard=unnamedplus
    else
        set clipboard=unnamed
    endif
endif

" -------------------------------------------------------------------------------------- "
" Plugin options 
" -------------------------------------------------------------------------------------- "

" Lightline 
set laststatus=2
set noshowmode

if !has('gui_running')
  set t_Co=256
endif


