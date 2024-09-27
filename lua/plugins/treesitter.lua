return {
  {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      --ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "regex", "bash", "markdown", "markdown_inline", "html", "css", "javascript"},
      ensure_installed = "all",
      sync_install = false,
      auto_install = true,
      highlight = {enable = true},
      indent = {enable = true},
      additional_vim_regex_highlighting = false,
      --autotag = { enable = true },
    })
  end
  },
  {
    "windwp/nvim-ts-autotag",
    config = function ()
      require('nvim-ts-autotag').setup()
    end
  }
}
