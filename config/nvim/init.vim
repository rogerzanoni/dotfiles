if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

 " Language support
 call dein#add('sheerun/vim-polyglot')

 " Extra syntax highlight definitions
 call dein#add('justinmk/vim-syntax-extra')

 " Themes
 call dein#add('drewtempelmeyer/palenight.vim')
 call dein#add('sonph/onehalf', {'rtp': 'vim/'})
 call dein#add('NLKNguyen/papercolor-theme')

 " Status line
 call dein#add('vim-airline/vim-airline')
 call dein#add('vim-airline/vim-airline-themes')

 " fzf and vim plugin
 call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
 call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

 " Ack
 call dein#add('mileszs/ack.vim')

 " Aerojump
 call dein#add('ripxorip/aerojump.nvim')

 " File tree
 call dein#add('preservim/nerdtree')

 " NERDCommenter
 call dein#add('scrooloose/nerdcommenter')

 " Highlight trailing whitespaces
 call dein#add('ntpeters/vim-better-whitespace')

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

 " Vim commands for some shell commands
 call dein#add('tpope/vim-eunuch')

 " Fade inactive windows
 call dein#add('TaDaa/vimade')

 " Yank ring
 call dein#add('cyansprite/Extract')

 call dein#add('lfv89/vim-interestingwords')

 " Distraction-free writing
 call dein#add('junegunn/goyo.vim')

 " Markdown support
 call dein#add('plasticboy/vim-markdown')

 " Easy jumping
 call dein#add('pechorin/any-jump.vim')

 " Display chantges in gutter
 call dein#add('airblade/vim-gitgutter')

 " Vimwiki
 call dein#add('vimwiki/vimwiki')

 " calendar
 call dein#add('mattn/calendar-vim')

 " Preview colors in css
 call dein#add('ap/vim-css-color')

 " multiple cursors
 call dein#add('mg979/vim-visual-multi')

 " Autocomplete/lsp
 call dein#add('prabirshrestha/vim-lsp')
 call dein#add('Shougo/deoplete.nvim')
 call dein#add('lighttiger2505/deoplete-vim-lsp')

 " Snippets
 call dein#add('SirVer/ultisnips')
 call dein#add('honza/vim-snippets')
 call dein#add('thomasfaingnaert/vim-lsp-snippets')
 call dein#add('thomasfaingnaert/vim-lsp-ultisnips')

 " Matching text nav
 call dein#install('andymass/vim-matchup')

 " Auto setup indent style
 call dein#install('tpope/vim-sleuth')

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on

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
colorscheme PaperColor

" Airline setup
let g:airline_theme='raven'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:palenight_terminal_italics=1

" Mode info is displayed by lightline
set noshowmode

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
set encoding=UTF-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backups off
set nobackup
set nowb
set noswapfile

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

" Keybindingsss
let mapleader = "\<space>"

" Use the clipboard for all operations
set clipboard+=unnamedplus

" Open fzf files on the current window
let g:fzf_layout = { 'window': 'enew' }

" Disable the preview by default
let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/']

" Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" Enable better withespace
let g:better_whitespace_enabled=1

" use rustfmt automatically on save
let g:rustfmt_autosave = 1

" make Ack plugin use ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:vimade = {}
let g:vimade.fadelevel = 0.6

" setting with vim-lsp
if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(
      \   lsp#utils#find_nearest_parent_file_directory(
      \     lsp#utils#get_buffer_path(), ['.ccls', 'compile_commands.json', '.git/']))},
      \ 'initialization_options': {
      \   'highlight': { 'lsRanges' : v:true },
      \   'cache': {'directory': stdpath('cache') . '/ccls' },
      \ },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
endif

" Autocomplete

let g:deoplete#enable_at_startup = 1

" Snippets

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" Highlight current line
augroup CustomCursorLine
au!
au VimEnter * :hi! CursorLine gui=underline cterm=underline ctermfg=None guifg=None ctermbg=None guibg=None
augroup END

" don't automatically jump to first result
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

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
nmap <leader>rr :History<cr>

" FZF tag search
nmap <leader>t :Tags<cr>

" FZF lines in open buffers
nmap <leader>l :Lines<cr>

" FZF lines in current buffer
nmap <leader>ll :BLines<cr>

" FZF commits
nmap <leader>, :Commits<cr>

" FZF buffer commits
nmap <leader>k :BCommits<cr>

" FZF helper to find sibling files
nmap <leader>. :Files <C-r>=expand("%:h")<CR>/<CR>

" Open file tree
nmap <leader>n :NERDTreeToggle<cr>

" Switch header/source
nmap <leader>q :FSHere<cr>

" Refactor
nmap <leader>r :LspRename<cr>

" References
nmap <leader>re :LspReferences<cr>

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

" Quick buffer switching
nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bn<CR>
nnoremap <S-X> :bdelete<CR>

" Quick tab management
nnoremap <C-S-N> :tabnew<CR>
nnoremap <C-S-X> :tabclose<CR>
nnoremap <C-PageUp> :tabp<CR>
nnoremap <C-PageDown> :tabn<CR>

" Extract mappings
" mappings for putting
nmap p <Plug>(extract-put)
nmap P <Plug>(extract-Put)

nmap <leader>p :ExtractPin<cr>
nmap <leader>P :ExtractUnPin<cr>

" Aerojump mappings
nmap <leader>j <Plug>(AerojumpSpace)

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

" Interesting words mappings
let g:interestingWordsDefaultMappings = 0

" Improve cpp highlighting
"
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
vnoremap <silent> <leader>k :call InterestingWords('v')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>

nnoremap <silent> m :call WordNavigation(1)<cr>
nnoremap <silent> M :call WordNavigation(0)<cr>

" Skip to next/prev hunk
nmap ]g <Plug>(GitGutterNextHunk)
nmap [g <Plug>(GitGutterPrevHunk)

" vimwiki set up
let g:vimwiki_list = [{'path': '~/Nextcloud/Notes/',
                       \ 'syntax': 'markdown', 'auto_toc' : 1,
                       \ 'ext': '.md'}]

command! Diary VimwikiDiaryIndex
au BufEnter,BufNewFile diary.md VimwikiDiaryGenerateLinks
nmap <leader>dd :Diary<cr>
nmap <leader>dc :Calendar<cr>

set laststatus=2
syntax on
syntax enable

" Use spaces instead of tabs
set expandtab

" Insert spaces according to tabstops when hitting tab, etc
set smarttab

au! BufEnter *.cpp,*.cc,*.c let b:fswitchdst = 'h,hpp'    | let b:fswitchlocs = 'reg:/src/include/,../include,./'
au! BufEnter *.h,*.hpp      let b:fswitchdst = 'cpp,cc,c' | let b:fswitchlocs = 'reg:/include/src/,../src,./'
