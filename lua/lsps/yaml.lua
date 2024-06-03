return {
    "yamlls",
    active = true,
    config = function (lspconfig)
      lspconfig.yamlls.setup {
        settings = {
          yaml = {
            schemas = {
              ['https://json.schemastore.org/github-action.json'] = "github-action.json",
              ["https://raw.githubusercontentcom/projectriff/riff/main/riff-module-schema.json"] = "riff.yml",
            },
          },
        },
      }
    end
}
