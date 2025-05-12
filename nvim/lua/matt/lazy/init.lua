return {
  {
    "nvim-lua/plenary.nvim",
    name = "plenary"
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
  },
  {
    "eandrju/cellular-automaton.nvim"
  },
  {
    "neovim/nvim-lspconfig",
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("matt.lazy.cmp")
    end,
  },
}
