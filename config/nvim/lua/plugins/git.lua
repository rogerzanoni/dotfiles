-- Git related plugins
return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup {
        signs = {
          add = { text = '+' },
          change = { text = '~' },
          delete = { text = '_' },
          topdelete = { text = '‾' },
          changedelete = { text = '~' },
        },
      }
    end,
  },
  {
    "NeogitOrg/neogit",
    config = function ()
      require("neogit").setup()
    end
  }
}
