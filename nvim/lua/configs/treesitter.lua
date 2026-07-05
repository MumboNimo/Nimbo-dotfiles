local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then
  return
end

configs.setup({
  ensure_installed = {
    "lua",
    "python",
    "bash",
    "json",
    "markdown",
  },

  highlight = {
    enable = true,
  },

  indent = {
    enable = true,
  },
})
