return {
  "iamcco/markdown-preview.nvim",
  event = "VeryLazy",
  config = function()
    vim.g.mkdp_filetypes = {
      "markdown" }
  end,
}
