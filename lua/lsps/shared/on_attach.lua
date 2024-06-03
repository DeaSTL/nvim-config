
local custom_format = require('lsps.shared.custom_templ_format')


return function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  -- other configuration options
  vim.keymap.set("n", "<leader>lf", custom_format, opts)
end
