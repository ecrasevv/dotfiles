return {
  {
    "nvim-treesitter/nvim-treesitter",
    ensure_installed = { "markdown", "markdown_inline", "java", "javascript" },
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}
