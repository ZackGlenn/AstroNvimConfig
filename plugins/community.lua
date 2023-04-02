return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.julia" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.rust" },
  {
    "rust-tools.nvim",
    opts = function()
      local package_path = require("mason-registry").get_package("codelldb"):get_install_path()
      local codelldb_path = package_path .. "/codelldb"
      local liblldb_path = package_path .. "/extension/lldb/lib/liblldb"

      return {
        server = require("astronvim.utils.lsp").config "rust_analyzer",
        dap = {
          adapter = require("rust-tools.dap").get_codelldb_adapter(
            codelldb_path,
            liblldb_path .. (vim.loop.os_uname().sysname == "Linux" and ".so" or ".dylib")
          ),
        },
      }
    end,
  },
}
