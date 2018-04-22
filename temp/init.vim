if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

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

 " Easy motion
 call dein#add('easymotion/vim-easymotion')

 " File tree
 call dein#add('scrooloose/nerdtree')

 " Tagbar
 call dein#add('majutsushi/tagbar')

 " NERDCommenter
 call dein#add('scrooloose/nerdcommenter')

 " Highlight trailing whitespaces
 call dein#add('ntpeters/vim-better-whitespace')

 " Rainbow parentheses
 call dein#add('kien/rainbow_parentheses.vim')

 " Stop the paste madness
 call dein#add('roxma/vim-paste-easy')

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

" Number of undo levels
set undolevels=1000

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Enable mouse
set mouse=a

" GitGutter setup
let g:gitgutter_enabled = 1
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
let g:gitgutter_sign_added = '→'
let g:gitgutter_sign_modified = '⇄'
let g:gitgutter_sign_removed = '←'
let g:gitgutter_sign_removed_first_line = '↽'
let g:gitgutter_sign_modified_removed = '⇷'

" Keybindingsss
let mapleader = "\<space>"

" Use the clipboard for all operations
set clipboard+=unnamedplus

" Open fzf files on the current window
let g:fzf_layout = { 'window': 'enew' }

" Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" Enable better withespace
let g:better_whitespace_enabled=1

" Rainbow parentheses always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Quick access to commands
nnoremap ; :

" fast movement through splits
map <up> <c-w>k
map <down> <c-w>j
map <left> <c-w>h
map <right> <c-w>l

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Horizontal split
nmap <leader>h <C-w>s

" Vertical split
nmap <leader>v <C-w>v

" Close window
nmap <leader>c <C-w>c

" Close all except the current window
nmap <leader>o <C-w>o

" Ag file search
nmap <leader>s :Ag<space>

" Ag buffer search
nmap <leader>sb :AgBuffer<space>

" FZF file find in current working directory
nmap <leader>f :Files<cr>

" FZF buffer search
nmap <leader>b :Buffers<cr>

" FZF history search
nmap <leader>r :History<cr>

" FZF tag search
nmap <leader>t :Tags<cr>

" Open file tree
nmap <leader>n :NERDTreeToggle<cr>

" Open tagbar
nmap <leader>tt :TagbarToggle<cr>
