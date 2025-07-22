---@type LazySpec
return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = { { "nvim-lua/plenary.nvim", lazy = true } },
  keys = {
    { "<leader><leader>", "<cmd>Yazi<cr>", desc = "Open Yazi file manager" },
    { "<leader>fw", "<cmd>Yazi cwd<cr>", desc = "Yazi in cwd" },
  },
  opts = {
    -- open_for_directories = false,
    -- keymaps = { show_help = "<F1>" },
  },
  init = function()
    -- optional: disable built‑in netrw when hijacking directories
    vim.g.loaded_netrwPlugin = 1
  end,
}

