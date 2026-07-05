require "nvchad.options"

local opt = vim.opt

-- LINE NUMBER
opt.number = true
opt.relativenumber = true

-- UI FEEL
opt.cursorline = true
opt.signcolumn = "yes"
opt.termguicolors = true

-- INDENT
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- SEARCH
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- BEHAVIOR
opt.wrap = false
opt.scrolloff = 8
