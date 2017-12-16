set nocompatible
set number
set expandtab
set ignorecase
set incsearch
set hlsearch
set autoread

inoremap jk <ESC>
nmap ; :
:command! -bar -bang Q quit<bang>

let mapleader = " "

" Fix the clipboard
set clipboard=unnamed

" Single character deletes shouldn't fill default register.
noremap x "_x
" Visual mode pastes shouldn't fill default register.
vnoremap p "_dP

" Make backspace work properly
set backspace=2

set t_Co=256
set t_ut=
set cc=100
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm

let g:airline_powerline_fonts = 1
let g:airline_symbols_linenr = ' '
let g:airline_section_z = '%l:%c'
let g:airline_skip_empty_sections = 1

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
nnoremap <C-p> :FZF<CR>

nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set termguicolors
set background=dark

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/ListToggle'
Plugin 'vim-airline/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mhinz/vim-signify'
Plugin 'lifepillar/vim-solarized8.git'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf'
Plugin 'jceb/vim-orgmode'
Plugin 'tomasiser/vim-code-dark'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

let g:airline_solarized_bg='dark'
let g:airline_theme='codedark'

" Make the default diff split vertical.
:set diffopt+=vertical

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
augroup END

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set background=dark
colorscheme codedark
syntax on
