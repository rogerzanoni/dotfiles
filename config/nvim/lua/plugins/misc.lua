-- Miscelaneous fun stuff
return {
  -- Comment with haste
  {
    "numToStr/Comment.nvim",
    opts = {},
  },
  -- Move stuff with <M-j> and <M-k> in both normal and visual mode
  {
    "echasnovski/mini.move",
    config = function()
      require("mini.move").setup()
    end,
  },
  -- autopairs
  {
    "echasnovski/mini.pairs",
    event = "VeryLazy",
    opts = {},
  },
  -- better ui
  {
    'stevearc/dressing.nvim',
    opts = {},
  },
  { 'Civitasv/cmake-tools.nvim' },
  -- file navigation
  {
    'echasnovski/mini.files',
    version = false,
    config = function()
      require('mini.files').setup()
    end,
    -- keymaps stolen from LazyVim config
    keys = {
      {
        "<leader>fm",
        function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "Open mini.files (directory of current file)",
      },
      {
        "<leader>fM",
        function()
          require("mini.files").open(vim.loop.cwd(), true)
        end,
        desc = "Open mini.files (cwd)",
      },
    },
  },
  -- enhanced search
  {
  "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  -- Better buffer closing actions. Available via the buffers helper.
  {
    "kazhala/close-buffers.nvim",
    opts = {
      preserve_window_layout = { "this", "nameless" },
    },
  },
  "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
  "tpope/vim-surround", -- Surround stuff with the ys-, cs-, ds- commands
  -- paste buffer to sharing services
  {
    "rktjmp/paperplanes.nvim",
    config = function()
      require("paperplanes").setup({
        register = "+",
        provider = "0x0.st",
        provider_options = {},
        notifier = vim.notify or print,
      })
    end,
  },
  -- peek lines with :<number>
  {
    "nacro90/numb.nvim",
    config = function ()
      require('numb').setup()
    end,
  },
  -- decorate TODOs
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  -- enhanced matchparen
  {
    "utilyre/sentiment.nvim",
    event = "VeryLazy", -- keep for lazy loading
    opts = {
      -- config
    },
    init = function()
      -- `matchparen.vim` needs to be disabled manually in case of lazy loading
      vim.g.loaded_matchparen = 1
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {
    }
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    opts = {
      -- add any custom options here
    }
  }
}
