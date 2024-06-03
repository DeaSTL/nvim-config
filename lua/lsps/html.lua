
return {
    "html_ls",
    active = true,
    config = function(lspconfig)

      local on_attach = require('lsps.shared.on_attach')
      local capabilities = require('lsps.shared.capabilities')


      lspconfig.html.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        filetypes = { "html", "templ" },
      })
    end
}
