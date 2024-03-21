-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local lspconfig = require("lspconfig")
lspconfig.rust_analyzer.setup({
  settings = {
    ["rust-analyzer"] = {
      procMacro = {
        ignored = {
          leptos_macro = {
            "server",
          },
        },
      },
    },
  },
})
