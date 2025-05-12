return {
  'neovim/nvim-lspconfig',
  config = function()
    require('lspconfig').clangd.setup({vim.diagnostic.config({
      float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
      },
    })})
  end
}
