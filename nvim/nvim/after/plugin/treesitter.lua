return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "go",
        "c",
        "rust",
        "javascript",
        "typescript",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}

