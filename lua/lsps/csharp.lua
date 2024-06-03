return {
    "omnisharp",
    active = true,
    config = function(lspconfig)

      lspconfig.omnisharp.setup {
        cmd = { "omnisharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
        filetypes = { "cs" },
        root_dir = lspconfig.util.root_pattern("*.sln", "*.csproj", "project.json", ".git"),
        init_options = {
          usePlaceholders = true,
          completeUnimported = true,
          semanticHighlighting = true
        },
      }
    end
}
