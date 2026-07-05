local ok, lualine = pcall(require, "lualine")
if not ok then return end

lualine.setup({
  options = {
    theme = "auto",
    globalstatus = true,
    section_separators = "",
    component_separators = "",
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff" },
    lualine_c = {
      {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        symbols = { error = " ", warn = " ", info = " " },
      },
      { "filename", path = 1 },
    },
    lualine_x = { "filetype" }, -- bawaan lualine, cukup buat nampilin nama+icon filetype
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
})
