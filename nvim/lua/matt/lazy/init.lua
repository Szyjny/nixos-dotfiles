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
    "jghauser/follow-md-links.nvim",
    ft = "markdown",
    config = function()
      -- Podmieniamy gf tylko w markdownie
      vim.keymap.set("n", "gf", function()
        require("follow-md-links").follow_link()
      end, { desc = "Follow Markdown link", buffer = true })
    end,
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
