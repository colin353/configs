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

map // :nohlsearch<CR>

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
nnoremap <C-p> :GFiles<CR>

nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>

nnoremap <leader>eb :ElmMake<CR>
nnoremap <leader>et :ElmTest<CR>

nnoremap <leader>gb :GoBuild<CR>
nnoremap <leader>gt :GoTest<CR>

nnoremap <leader>cb :CargoBuild<CR>
nnoremap <leader>ct :CargoTest<CR>

nnoremap <leader>bb :BlazeBuild<CR>
nnoremap <leader>bt :BlazeTest<CR>

nnoremap <leader>pp :Buffers<CR>
nnoremap <leader>ps :Lines<CR>

" Automatically format rust files.
let g:rustfmt_autosave = 1
let g:rustfmt_command = "rustup run nightly rustfmt"

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set termguicolors
set background=light

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/ListToggle'
Plugin 'vim-airline/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mhinz/vim-signify'
Plugin 'lifepillar/vim-solarized8.git'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'jceb/vim-orgmode'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'fatih/vim-go'
Plugin 'elmcast/elm-vim'
Plugin 'colin353/cargo-cult.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'leafgarland/typescript-vim'
Plugin 'prettier/vim-prettier'
Plugin 'posva/vim-vue'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'bazelbuild/vim-bazel'
Plugin 'dart-lang/dart-vim-plugin'

func! CdToRootDir()
  let p = matchlist(getcwd(), '\m\(/home/colin/Documents/code/[^/]*/\)')
  if len(p) > 0
    execute "cd " . p[1]
  endif
endf
com! -nargs=0 CdToRootDir call CdToRootDir()

map <leader>fd :cd %:p:h<CR>
map <leader>fg :CdToRootDir<CR>

func! LoadGitBuffers()
  let files = systemlist('files')

  if len(getbufinfo({'buflisted':1})) <= 1
    for file in files
      execute "e " . fnameescape(file)
    endfor
  endif
  execute ":Buffers"
endf
com! -nargs=0 LoadGitBuffers call LoadGitBuffers()

nnoremap <leader>pp :LoadGitBuffers<CR>

map <c-p> :FZF<CR>

Plugin 'NLKNguyen/papercolor-theme'

" Make the default diff split vertical.
:set diffopt+=vertical

" Elm commands
let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1

set nowrap

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
augroup END

" Make indentation in vue two spaces.
set shiftwidth=2

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set background=light
colorscheme PaperColor
syntax on
