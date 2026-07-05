require "nvchad.mappings"

local map = vim.keymap.set

-- =========================
-- BASIC
-- =========================

map("n", ";", ":", { desc = "CMD mode" })
map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- =========================
-- FILE OPERATIONS
-- =========================

map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit window" })

-- =========================
-- FILE EXPLORER (NEO-TREE)
-- =========================

map("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })

-- =========================
-- TELESCOPE (SEARCH)
-- =========================

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })

map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })

map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })

map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help tags" })

-- =========================
-- TERMINAL
-- =========================

map("n", "<leader>tt", "<cmd>ToggleTerm direction=float<CR>", { desc = "Floating terminal" })

-- =========================
-- DIAGNOSTICS (IDE FEEL)
-- =========================

map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Diagnostics panel" })




