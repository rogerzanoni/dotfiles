local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

require 'paq' {
  -- let paq manage itself
  'savq/paq-nvim';

  -- colorscheme
  'EdenEast/nightfox.nvim';

  -- lualine
  'kyazdani42/nvim-web-devicons';
  'nvim-lualine/lualine.nvim';

  -- fuzzy finder
  {'junegunn/fzf', run = fn['fzf#install'] };
  'junegunn/fzf.vim';

  -- ack
  'mileszs/ack.vim';

  -- file tree
  'preservim/nerdtree';

  -- fast header/source switching
  'derekwyatt/vim-fswitch';

  -- git
  'tpope/vim-fugitive';

  -- distraction-free writing
  'junegunn/goyo.vim';

  -- markdown support
  'plasticboy/vim-markdown';

  -- git gutter
  'airblade/vim-gitgutter';

  -- wiki/calendar/diary
  'vimwiki/vimwiki';
  'mattn/calendar-vim';

  -- color preview
  'ap/vim-css-color';

  -- multiple cursors
  'mg979/vim-visual-multi';

  --- lsp/autocomplete
  'neovim/nvim-lspconfig';
  'hrsh7th/cmp-nvim-lsp';
  'hrsh7th/cmp-buffer';
  'hrsh7th/cmp-path';
  'hrsh7th/cmp-cmdline';
  'hrsh7th/nvim-cmp';
  'j-hui/fidget.nvim';

  -- snippets
  'SirVer/ultisnips';
  'quangnguyen30192/cmp-nvim-ultisnips';

  -- treesitter
  'nvim-treesitter/nvim-treesitter';

  -- highlight matching text
  'andymass/vim-matchup';

  -- autodetect indent style
  'tpope/vim-sleuth';

  -- hightlight word under cursor
  'lfv89/vim-interestingwords';
  'RRethy/vim-illuminate';

  -- tab completion
  'ervandew/supertab';

  'ray-x/guihua.lua';
  'ray-x/navigator.lua';
}

-- plugins settings
require('plugins/fzf')
require('plugins/ack')
require('plugins/nerdtree')
require('plugins/fswitch')
require('plugins/gitgutter')
require('plugins/vimwiki')
require('plugins/lsp')
require('plugins/supertab')
require('plugins/treesitter')
