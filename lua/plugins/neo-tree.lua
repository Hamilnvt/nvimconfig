return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim"
  },
  config = function()
   vim.keymap.set('n', '<leader>nr', ':Neotree filesystem reveal right<CR>', { desc = '[N]eoTree [R]eveal' })
   vim.keymap.set('n', '<leader>nt', ':Neotree filesystem toggle right<CR>', { desc = '[N]eoTree [T]oggle' })
  end
}
