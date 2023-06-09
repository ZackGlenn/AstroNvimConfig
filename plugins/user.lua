return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  {
    "windwp/nvim-ts-autotag",
    config = require("nvim-ts-autotag").setup {
      filetypes = { "html", "xml", "markdown", "javascript", "typescript", "rust" },
    },
  },
  {
    "kaarmu/typst.vim",
    lazy = false,
  },
}
