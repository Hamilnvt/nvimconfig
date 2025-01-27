return {
  {
    'hrsh7th/cmp-nvim-lsp'
  },
  {
    'L3MON4D3/LuaSnip',
    dependencies = {
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets'
    },
  },
  {'hrsh7th/cmp-buffer'},
  {'hrsh7th/cmp-path'},
  {
    'hrsh7th/nvim-cmp',
    config = function()
      local cmp = require'cmp'
      require("luasnip.loaders.from_vscode").lazy_load()

--      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
--      cmp.event:on(
--        'confirm_done',
--        cmp_autopairs.on_confirm_done()
--      )

      cmp.setup({
        snippet = {
          expand = function(args)
            --vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          -- non sembrano proprio funzionare
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          --{ name = 'vsnip' }, -- For vsnip users.
          --{ name = 'luasnip' }, -- For luasnip users.
        }, {
          { name = 'buffer' },
          { name = 'path' },
        })
      })
    end,
  }
}
