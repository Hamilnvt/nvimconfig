return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ensure_installed = { "stylua", "selene", "luacheck", "shellcheck", "shfmt", "tailwindcss-language-server", "typescript-language-server", "css-lsp", "html" }
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "jdtls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.clangd.setup({ capabilities = capabilities })
      lspconfig.jdtls.setup({ capabilities = capabilities })
      vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, { desc = "[G]o to [D]eclaration"})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { desc = "[G]o to [D]efinition" })
      vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, { desc = "[G]o to [I]mplementation"})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gt', vim.lsp.buf.type_definition, { desc = "[G]o to [T]ype definition"})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = "[C]ode [A]ction"})
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { desc = "[G]o to [R]eference"})
      -- :h vim.lsp.buf
    end
  }
}
--clang-format ->C, C++, Java e JavaScript
--cland -> C/C++
--jdtls -> java
