if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein')

 " Autocomplete
 call dein#add('Shougo/deoplete.nvim')

 " Language support
 call dein#add('sheerun/vim-polyglot')

 " Theme
 call dein#add('morhetz/gruvbox')

 " Airline
 call dein#add('vim-airline/vim-airline')
 call dein#add('vim-airline/vim-airline-themes')

 " fzf and vim plugin 
 call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 }) 
 call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

 " Silver searcher
 call dein#add('numkil/ag.nvim')

 " Show vcs changes on buffer
 call dein#add('airblade/vim-gitgutter')

 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
 endif

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

colorscheme gruvbox
set background=dark
 
" Airline setup
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Display an underline for the current line
set cursorline

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=

" Display tabs and trailing spaces
set listchars=tab:▶·,trail:·
set list

" Default encoding
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backups off
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Insert spaces according to tabstops when hitting tab, etc
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Reduce update time
set updatetime=100

" Copy last indening when starting a new line
set ai "Auto indent

" Auto insert indent levels on some cases
set si "Smart indent

" Set word wrapping
set wrap "Wrap lines

" Keep changed buffers when opening new files
set hidden

" Show line numbers on the side
set number

" GitGutter setup
let g:gitgutter_enabled = 1
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
let g:gitgutter_sign_added = '→'
let g:gitgutter_sign_modified = '⇄'
let g:gitgutter_sign_removed = '←'
let g:gitgutter_sign_removed_first_line = '↽'
let g:gitgutter_sign_modified_removed = '⇷'

