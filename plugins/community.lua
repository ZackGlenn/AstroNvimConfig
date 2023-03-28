return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  dev = true,
  branch = "dev-codelldb",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.project.project-nvim" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.julia" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.rust" },
  -- {
  --   "rust-tools.nvim",
  --   opts = function()
  --     local extension_path = vim.fn.stdpath "data" .. "/mason/packages/codelldb/extension/"
  --     local codelldb_path = extension_path .. "adapter/codelldb"
  --     local liblldb_path = extension_path .. "lldb/lib/liblldb"
  --
  --     if vim.loop.os_uname().sysname == "Linux" then
  --       liblldb_path = liblldb_path .. ".so"
  --     else
  --       liblldb_path = liblldb_path .. ".dylib"
  --     end
  --
  --     return {
  --       server = require("astronvim.utils.lsp").config "rust_analyzer",
  --       dap = { adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path) },
  --     }
  --   end,
  -- },
}
