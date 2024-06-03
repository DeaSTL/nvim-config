return {
    "lua_ls",
    active = true,
    config = function (lspconfig)
      lspconfig.lua_ls.setup {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }
            }
          }
        }
      }
    end
}
