return {
  -- change trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  -- override nvim-cmp and add cmp-emoji
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
    end,
  },

  {
    "mangelozzi/rgflow.nvim",
    opts = {
      cmd_flags = "--smart-case --fixed-strings --ignore --max-columns 200",
      default_trigger_mappings = false,
      default_ui_mappings = true,
      default_quickfix_mappings = true,
    },
    keys = {
      {
        "<leader>rf",
        function()
          require("rgflow").open_blank()
        end,
        desc = "Ripgrep find",
      },
      {
        "<leader>rw",
        function()
          require("rgflow").open_cword()
        end,
        desc = "Ripgrep find the current word",
      },
      {
        "<leader>rr",
        function()
          require("rgflow").open_again()
        end,
        desc = "Ripgrep reopen last search",
      },
      {
        "<leader>ra",
        function()
          require("rgflow").abort()
        end,
        desc = "Ripgrep abort search",
      },
      {
        "<leader>rh",
        function()
          require("rgflow").show_rg_help()
        end,
        desc = "Ripgrep help",
      },
    },
  },

  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },

  -- add tsserver and setup with typescript.nvim instead of lspconfig
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
      init = function()
        require("lazyvim.util").lsp.on_attach(function(_, buffer)
          -- stylua: ignore
          vim.keymap.set( "n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
          vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
        end)
      end,
    },
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- tsserver will be automatically installed with mason and loaded with lspconfig
        tsserver = {},
      },
      -- you can do any additional lsp server setup here
      -- return true if you don't want this server to be setup with lspconfig
      ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
      setup = {
        -- example to setup with typescript.nvim
        tsserver = function(_, opts)
          require("typescript").setup({ server = opts })
          return true
        end,
        -- Specify * to use this function as a fallback for any server
        -- ["*"] = function(server, opts) end,
      },
    },
  },

  -- for typescript, LazyVim also includes extra specs to properly setup lspconfig,
  -- treesitter, mason and typescript.nvim. So instead of the above, you can use:
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "css",
        "cmake",
        "bash",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "meson",
        "python",
        "query",
        "regex",
        "rust",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

  -- since `vim.tbl_deep_extend`, can only merge tables and not lists, the code above
  -- would overwrite `ensure_installed` with the new value.
  -- If you'd rather extend the default config, use the code below instead:
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
      })
    end,
  },

  -- use mini.starter instead of alpha
  { import = "lazyvim.plugins.extras.ui.mini-starter" },

  -- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc
  { import = "lazyvim.plugins.extras.lang.json" },

  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "asm-lsp",
        "bash-language-server",
        "css-lsp",
        "digestif",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "cmake-language-server",
        "contextive",
        "flake8",
        "html-lsp",
        "json-lsp",
        "lua-language-server",
        "markdown-oxide",
        "mesonlsp",
        "nginx-language-server",
        "python-lsp-server",
        "rust-analyzer",
        "stylua",
        "shellcheck",
        "shfmt",
        "tree-sitter-cli",
        "typos",
        "typos-lsp",
        "woke",
        "write-good",
        "yaml-language-server",
      },
    },
  },
}
