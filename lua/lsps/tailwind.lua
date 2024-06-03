local on_attach = require('lsps.shared.on_attach')
local capabilities = require('lsps.shared.capabilities')


return {
    "tailwindcss",
    active = true,
    config = function (lspconfig)
      lspconfig.tailwindcss.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        filetypes = { "templ", "astro", "javascript", "typescript", "react", "erb"},
        init_options = { userLanguages = { templ = "html" } },
      })

    end
}
