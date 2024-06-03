return {
    "clangd",
    active = true,
    config = function (lspconfig)
      lspconfig.clangd.setup {
        filetypes = { "c", "cpp", "objc", "objcpp" },
        root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--completion-style=bundled",
          "--header-insertion=iwyu",
          "--suggest-missing-includes",
          "--cross-file-rename",
          "--offset-encoding=utf-16"
        },
        init_options = {
          clangdFileStatus = true,
          usePlaceholders = true,
          completeUnimported = true,
          semanticHighlighting = true,
          inlayHints = {
            parameterNames = true,
            parameterTypes = true,
            chainingHints = true,
          },
        },
      }
    end
}
