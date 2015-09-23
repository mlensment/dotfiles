" Vundle (begin)
" https://github.com/VundleVim/Vundle.vim
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" To install the following plugins execute :PluginInstall
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim' " Fuzzy search
Plugin 'altercation/vim-colors-solarized' " Solarized color scheme

call vundle#end()

filetype plugin indent on " load file type plugins + indentation
" Vundle (end)

" Solarized config
syntax enable
set background=dark
colorscheme solarized

" CTRLP (fuzzy search) config
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ } " Open files in tab by default

" Show the cursor position all the time
set ruler

" Tabs to 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Display incomplete commands
set showcmd

" Make it obvious where 80 characters is (ctermbg means color)
highlight ColorColumn ctermbg=0
set textwidth=80
set colorcolumn=+1

" Keep n lines below and above the cursor
set scrolloff=10

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
