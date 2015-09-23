" Vundle (begin)
" https://github.com/VundleVim/Vundle.vim
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim' " fuzzy search

call vundle#end()
filetype plugin indent on " load file type plugins + indentation
" Vundle (end)

set ruler " show the cursor position all the time

" Tabs to 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

set showcmd " display incomplete commands

" Make it obvious where 80 characters is (ctermbg means color)
highlight ColorColumn ctermbg=0
set textwidth=80
set colorcolumn=+1

set scrolloff=10 " Keep n lines below and above the cursor

" Show line numbers and paint them grey
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
augroup end
