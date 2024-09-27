--return {
--  "jiangmiao/auto-pairs",
--}

return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
    opts = {
      fast_wrap = {
        map = '<C-w>',
        end_key = 'e',
      },

    },
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
}
