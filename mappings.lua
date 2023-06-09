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
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>m"] = { name = "Custom" },
    ["<leader>mt"] = { "<cmd>TroubleToggle<cr>", desc = "Toggle trouble" },

    ["<leader>h"] = { name = "Harpoon", desc = "Harpoon" },
    ["<leader>ha"] = { "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Add harpoon" },
    ["<leader>ht"] = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Toggle harpoon" },
    ["[h"] = { "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Previous harpoon" },
    ["]h"] = { "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Next harpoon" },

    ["<leader>P"] = { name = "Peek", desc = "Peek" },
    ["<leader>Po"] = { "<cmd>PeekOpen<cr>", desc = "Open" },
    ["<leader>Pc"] = { "<cmd>PeekClose<cr>", desc = "Close" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
