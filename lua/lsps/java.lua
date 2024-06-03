return {
    "jdtls",
    active = true,
    config = function (lspconfig)

      lspconfig.jdtls.setup {
        cmd = { "jdtls" },
        root_dir = lspconfig.util.root_pattern("pom.xml", "gradle.build", ".git"),
        init_options = {
          workspace = vim.fn.getcwd(),
          jvm_args = {
            "-XX:+UseParallelGC",
            "-XX:GCTimeRatio=4",
            "-XX:AdaptiveSizePolicyWeight=90",
            "-Dsun.zip.disableMemoryMapping=true",
            "-Xmx2G",
            "-Xms100m",
          },
        },
      }
    end
}
