-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- navigate tabs
    ["J"] = { ":bp<cr>", desc = "Previous tab" },
    ["K"] = { ":bn<cr>", desc = "Next tab" },
    -- vimtex mappings
    ["<leader>x"] = { name = "Latex" },
    ["<leader>xi"] = { "<plug>(vimtex-info)", desc = "Current project info" },
    ["<leader>xI"] = { "<plug>(vimtex-info-full)", desc = "All project info" },
    ["<leader>xl"] = { "<plug>(vimtex-compile)", desc = "Compile" },
    ["<leader>xL"] = { "<plug>(vimtex-compile-selected)", desc = "Compile selected" },
    ["<leader>xk"] = { "<plug>(vimtex-stop)", desc = "Stop cont. compilation" },
    ["<leader>xK"] = { "<plug>(vimtex-stop-all)", desc = "Stop all  compilation" },
    ["<leader>xe"] = { "<plug>(vimtex-errors)", desc = "Quickfix window" },
    ["<leader>xo"] = { "<plug>(vimtex-compile-output)", desc = "Open compiler output" },
    ["<leader>xg"] = { "<plug>(vimtex-status)", desc = "Compilation status" },
    ["<leader>xG"] = { "<plug>(vimtex-status-all)", desc = "All compilation statuses" },
    ["<leader>xc"] = { "<plug>(vimtex-clean)", desc = "Clean aux files" },
    ["<leader>xC"] = { "<plug>(vimtex-clean-full)", desc = "Clean all files" },
    ["<leader>xm"] = { "<plug>(vimtex-imaps-list)", desc = "Show insert mappings" },
    ["<leader>xx"] = { "<plug>(vimtex-reload)", desc = "Reload vimtex scripts" },
    ["<leader>xX"] = { "<plug>(vimtex-reload-state)", desc = "Reload buffer state" },
    ["<leader>xs"] = { "<plug>(vimtex-toggle-main)", desc = "Toggle main file focus" },
    ["<leader>xa"] = { "<plug>(vimtex-context-menu)", desc = "Show context menu" },
    ["<leader>xv"] = { "<plug>(vimtex-view)", desc = "Forward search" },
    -- telescope projects extension
    ["<leader>fp"] = { function() require("telescope").extensions.projects.projects {} end, desc = "Find Projects" },
    -- custom UI toggles
    ["<leader>uL"] = {
      function()
        if vim.o.linebreak then
          vim.o.linebreak = false
          vim.notify("linebreak off", vim.log.levels.INFO, { title = "Custom" })
        else
          vim.o.linebreak = true
          vim.notify("linebreak on", vim.log.levels.INFO, { title = "Custom" })
        end
      end,
      desc = "toggle linebreak",
    },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
