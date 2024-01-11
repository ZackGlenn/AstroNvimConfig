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
  {
    "LiadOz/nvim-dap-repl-highlights",
    config = function() require("nvim-dap-repl-highlights").setup() end,
    lazy = false,
  },
  {
    "Aasim-A/scrollEOF.nvim",
    config = function() require("scrollEOF").setup() end,
    lazy = false,
  },
  {
    "epwalsh/obsidian.nvim",
    event = {
      "BufReadPre " .. vim.fn.expand "~" .. "/Documents/TheVault/**.md",
      "BufNewFile " .. vim.fn.expand "~" .. "/Documents/TheVault/**.md",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      dir = vim.env.HOME .. "/Documents/TheVault",
      disable_frontmatter = true,
    },
  },
  {
    "jghauser/papis.nvim",
    dependencies = {
      "kkharji/sqlite.lua",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    lazy = false,
    config = function()
      require("papis").setup {
        papis_python = {
          dir = "/home/zack/Documents/School/Thesis/thesis_refs",
          info_name = "info.yaml",
          notes_name = [[notes.org]],
        },
        init_filenames = { "%info_name%", "*.tex" },
        yq_bin = "/home/zack/.local/share/nvim/mason/bin/yq",
      }
    end,
  },
}
