return {
    "pyright",
    active = true,
    config = function (lspconfig)
      lspconfig.pyright.setup {
        settings = {
          python = {
            analysis = {
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
            },
          },
        },
      }

    end
}
