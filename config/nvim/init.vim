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
 call dein#add('zchee/deoplete-clang')

 " Language support
 call dein#add('sheerun/vim-polyglot')

 " Theme
 " call dein#add('joshdick/onedark.vim')
 " call dein#add('nanotech/jellybeans.vim')
 " call dein#add('dracula/vim')
 call dein#add('drewtempelmeyer/palenight.vim')

 " Airline
 " call dein#add('vim-airline/vim-airline')
 " call dein#add('vim-airline/vim-airline-themes')

 " Lightline
 call dein#add('itchyny/lightline.vim')

 " fzf and vim plugin
 call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
 call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

 " Ack
 call dein#add('mileszs/ack.vim')

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
 call dein#add('luochen1990/rainbow')

 " Stop the paste madness
 call dein#add('roxma/vim-paste-easy')

 " Switch between header and source files
 call dein#add('derekwyatt/vim-fswitch')

 " Narrow region like emacs
 call dein#add('chrisbra/NrrwRgn')

 " git
 call dein#add('tpope/vim-fugitive')

 " Rust support
 call dein#add('rust-lang/rust.vim')

 " Underline word (and matching words) under cursor
 call dein#add('itchyny/vim-cursorword')

 " Tag management
 call dein#add('ludovicchabant/vim-gutentags')

 " Vim commands for some shell commands
 call dein#add('tpope/vim-eunuch')

 " Fade inactive windows
 call dein#add('TaDaa/vimade')

 " Yank ring
 call dein#add('cyansprite/Extract')

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

set background=dark
colorscheme palenight

" Airline setup
" let g:airline_theme=''
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1

" Lightline setup

let g:lightline = {
      \ 'colorscheme': 'palenight',
      \ }

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

" Don't show weird completion window at the top
set completeopt=menu

" GitGutter setup
let g:gitgutter_enabled = 1
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
let g:gitgutter_sign_added = '→'
let g:gitgutter_sign_modified = '⇄'
let g:gitgutter_sign_removed = '←'
let g:gitgutter_sign_removed_first_line = '↽'
let g:gitgutter_sign_modified_removed = '⇷'
autocmd BufWritePost * GitGutter

" deoplete setup

let g:deoplete#sources#clang#libclang_path = $NVIM_LIBCLANG_PATH
let g:deoplete#sources#clang#clang_header = $NVIM_LIBCLANG_HEADER_PATH
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

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

" Rainbow always on
let g:rainbow_active = 1

" use rustfmt automatically on save
let g:rustfmt_autosave = 1

" Gutentags tag dir
let g:gutentags_cache_dir = expand('~/.cache/tags')

" make Ack plugin use ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:vimade = {}
let g:vimade.fadelevel = 0.6

" Highlight current line
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

" don't automatically jump to first result
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" Quick access to commands
nnoremap ; :

" fast movement through splits
map <up> <c-w>k
map <down> <c-w>j
map <left> <c-w>h
map <right> <c-w>l

" Horizontal split
nmap <leader>h <C-w>s

" Vertical split
nmap <leader>v <C-w>v

" Close window
nmap <leader>c <C-w>c

" Close all except the current window
nmap <leader>o <C-w>o

" Ack file search
nmap <leader>s :Ack<space>

" FZF file find in current working directory
nmap <leader>f :Files<cr>

" FZF buffer search
nmap <leader>b :Buffers<cr>

" FZF history search
nmap <leader>r :History<cr>

" FZF tag search
nmap <leader>t :Tags<cr>

" FZF lines in open buffers
nmap <leader>l :Lines<cr>

" FZF lines in current buffer
nmap <leader>ll :BLines<cr>

" FZF commits
nmap <leader>, :Commits<cr>

" FZF buffer commits
nmap <leader>m :BCommits<cr>

" FZF buffer tags
" TODO commands for navigating code on rigth window
nmap <leader>j :BTags<cr>

" FZF helper to find sibling files
nmap <leader>. :Files <C-r>=expand("%:h")<CR>/<CR>

" Open file tree
nmap <leader>n :NERDTreeToggle<cr>

" Open tagbar
nmap <leader>tt :TagbarToggle<cr>

" Switch header/source
nmap <leader>q :FSHere<cr>

" Sane line movement on wrapped lines
nnoremap j gj
nnoremap k gk

" Clear search highlights
nmap <silent> <leader>/ :nohlsearch<CR>

" Keep visual selection after shifting
vmap < <gv
vmap > >gv

" Tag jumping mappings
nnoremap <leader>x <C-]>
nnoremap <leader>z <C-O>

" Quick tab switching
nnoremap <S-Left> :bp<CR>
nnoremap <S-Right> :bn<CR>

" Extract mappings
" mappings for putting
nmap p <Plug>(extract-put)
nmap P <Plug>(extract-Put)

nmap <leader>p :ExtractPin<cr>
nmap <leader>P :ExtractUnPin<cr>

" mappings for cycling
map <m-s> <Plug>(extract-sycle)
map <m-S> <Plug>(extract-Sycle)
map <c-s> <Plug>(extract-cycle)

" mappings for visual
vmap p <Plug>(extract-put)
vmap P <Plug>(extract-Put)

" mappings for insert
imap <m-v> <Plug>(extract-completeReg)
imap <c-v> <Plug>(extract-completeList)
imap <c-s> <Plug>(extract-cycle)
imap <m-s> <Plug>(extract-sycle)
imap <m-S> <Plug>(extract-Sycle)

" mappings for replace
nmap <silent> s <Plug>(extract-replace-normal)
vmap <silent> s <Plug>(extract-replace-visual)
