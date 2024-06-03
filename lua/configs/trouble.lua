vim.keymap.set(
  "n", "<leader>pd", function()
    require("trouble").toggle("diagnostics")
  end, {})
