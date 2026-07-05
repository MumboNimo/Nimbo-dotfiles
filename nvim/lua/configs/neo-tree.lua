require("neo-tree").setup({
  default_component_configs = {

    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "󰜌",
      default = "",
    },

    git_status = {
      symbols = {
        added     = "",
        modified  = "",
        deleted   = "",
        renamed   = "➜",
        untracked = "",
        ignored   = "◌",
        unstaged  = "✗",
        staged    = "✓",
      },
    },
  },

  filesystem = {
    follow_current_file = { enabled = true },
    use_libuv_file_watcher = true,
  },

  window = {
    position = "left",
    width = 32,
  },
})

-- =========================
-- AUTO OPEN (INI YANG BIKIN MIRIP DASHBOARD)
-- =========================
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- buka file explorer saat start
    vim.defer_fn(function()
      require("neo-tree.command").execute({
        toggle = true,
        dir = vim.loop.cwd(),
      })
    end, 50)
  end,
})
