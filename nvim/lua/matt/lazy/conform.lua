return {
  'stevearc/conform.nvim',
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        cpp = { "clang_format" },
        nix = { "nixpkgs_fmt" },
      }
    })
  end
}

