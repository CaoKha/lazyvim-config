-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lspconfig").volar.setup({
  filetypes = { "vue", "javascript", "typescript", "javascriptreact", "typescriptreact" },
  init_options = {
    vue = {
      hybridMode = false,
    },
    typescript = {
      tsdk = vim.fn.getcwd() .. "node_modules/typescript",
    },
  },
})
require("lspconfig").tailwindcss.setup({
  filetypes = {
    "aspnetcorerazor",
    "astro",
    "astro-markdown",
    "blade",
    "clojure",
    "django-html",
    "htmldjango",
    "edge",
    "eelixir",
    "elixir",
    "ejs",
    "erb",
    "eruby",
    "gohtml",
    "gohtmltmpl",
    "haml",
    "handlebars",
    "hbs",
    "html",
    "html-eex",
    "heex",
    "jade",
    "leaf",
    "liquid",
    "markdown",
    "mdx",
    "mustache",
    "njk",
    "nunjucks",
    "php",
    "razor",
    "slim",
    "twig",
    "css",
    "less",
    "postcss",
    "sass",
    "scss",
    "stylus",
    "sugarss",
    "javascript",
    "javascriptreact",
    "reason",
    "rescript",
    "typescript",
    "typescriptreact",
    "vue",
    "svelte",
    "rust",
  },
  init_options = {
    userLanguages = {
      rust = "html",
    },
  },
  -- on_attach = function(client, bufnr)
  --   require("tailwindcss-colors").buf_attach(bufnr)
  -- end,
})
