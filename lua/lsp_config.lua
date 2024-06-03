local lspconfig = require('lspconfig')

for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config')..'/lua/lsps', [[v:val =~ '\.lua$']])) do
  local lsp = require('lsps.'..file:gsub('%.lua$', ''))
  if lsp.active then
    lsp.config(lspconfig)
  end
end
