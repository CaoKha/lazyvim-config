return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
  },
  {
    "akinsho/pubspec-assist.nvim",
    dependencies = "plenary.nvim",
    config = function()
      require("pubspec-assist").setup({})
    end,
  },
}
