-- ~/.config/nvim/lua/configs/alpha.lua
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  "                                    ",
  "               /\\_/\\                ",
  "          ____/ o o \\               ",
  "        /~____  =ø=  /              ",
  "       (______)__m_m_)              ",
  "                                    ",
  "         R  A  A  A  W  R           ",
  "                                    ",
}

dashboard.section.buttons.val = {
  dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
  dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("r", "  Recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("g", "  Find text", ":Telescope live_grep <CR>"),
  dashboard.button("c", "  Config", ":e $MYVIMRC <CR>"),
  dashboard.button("s", "  Restore session", ":lua require('persistence').load() <CR>"),
  dashboard.button("q", "  Quit", ":qa<CR>"),
}

dashboard.section.footer.val = {
  "Jangan lupa sholat, Ko. Terus belajar, terus menyala.",
}

dashboard.section.header.opts.hl = "AlphaHeader"
dashboard.section.buttons.opts.hl = "AlphaButtons"
dashboard.section.footer.opts.hl = "AlphaFooter"

alpha.setup(dashboard.opts)

vim.api.nvim_create_autocmd("User", {
  pattern = "AlphaReady",
  callback = function()
    vim.cmd([[
      set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
    ]])
  end,
})
