return {
    "gopls",
    active = true,
    config = function (lspconfig)



      lspconfig.gopls.setup {
        cmd = { "gopls", "serve" },
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
          },
        },
      }
    end
}
