local on_attach = require('lsps.shared.on_attach')
local capabilities = require('lsps.shared.capabilities')


return {
    "templ",
    active = true,
    config = function (lspconfig)
      local servers = { 'gopls', 'ccls', 'cmake', 'tsserver', 'templ' }
      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end
      vim.filetype.add({ extension = { templ = "templ" } })
    end
}

