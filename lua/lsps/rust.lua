return {
    "rust_analyzer",
    active = true,
    config = function (lspconfig)
      lspconfig.rust_analyzer.setup {
        settings = {
          ["rust-analyzer"] = {
            assist = {
              importGranularity = "module",
              importPrefix = "by_self",
            },
            cargo = {
              loadOutDirsFromCheck = true
            },
            procMacro = {
              enable = true
            },
          }
        }
      }

    end
}
