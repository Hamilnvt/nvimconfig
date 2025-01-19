local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Search
map('n', '<leader>sc', ':nohl<CR>', { desc = "[S]earch [C]lear"})
map('n', '<leader>ss', '/', { desc = "[S]earch"})
map('n', '<leader>sr', ':%s//', { desc = "[S]earch [R]eplace" })

-- Fast save and quit
map('n', '<leader>w', ':w<CR>', { desc = "save" })
map('n', '<leader>W', ':wqa!<CR>', { desc = "save all and quit" })
map('n', '<leader>q', ':q<CR>', { desc = 'quit'})

-- Terminal
vim.cmd("tnoremap <Esc> <C-\\><C-n>")

-- Compile and Execute with make
map('n', '<leader>cc', ':wa<CR>:split<CR>:terminal<CR>imake<CR>', { desc = '[C]ompile (make)' })
map('n', '<leader>ce', ':wa<CR>:split<CR>:terminal<CR>imake && ./', { desc = '[C]ompile (make)' })
map('n', '<leader>ee', ':split<CR>:terminal<CR>i./', { desc = '[E]xecute (executable)' })

map('n', '<leader>el', ':wa<CR>:split<CR>:terminal<CR>i<C-p><CR>', { desc = '[E]xecute [L]ast'})

-- Move lines and chars
map('n', 'mu', 'ddkP', { desc = "[M]ove line [U]p" })
map('n', 'md', 'ddp', { desc = "[M]ove line [D]own" })
map('n', 'ml', 'xhP', { desc = "[M]ove character [L]eft" })
map('n', 'mr', 'xp', { desc = "[M]ove character [R]ight" })

map('v', 'mu', 'dkP', { desc = "[M]ove lines [U]p" })
map('v', 'md', 'dp', { desc = "[M]ove lines [D]own" })
map('v', 'ml', 'xhP', { desc = "[M]ove characters [L]eft" })
map('v', 'mr', 'xp', { desc = "[M]ove characters [R]ight" })

-- Telescope
map('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = '[F]ind with live-[G]rep'})
map('n', '<leader>ff', ':Telescope find_files<CR>', { desc = '[F]ind [F]iles'})

-- LSP
map('n', 'K', 'vim.lsp.buf.hover', { desc = "ciao" })
--Non so perché non funzioni
--map('n', '<leader>gp', 'vim.lsp.buf.implementation', { desc = "[G]o to [I]mplementation" })
map('n', '<leader>ca', 'vim.lsp.buf.code_action', { desc = "[C]ode [A]ction"})

-- Harpoon
map('n', '<C-h>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { desc = "[H]arpoon menu"})
map('n', '<C-a>', ':lua require("harpoon.mark").add_file()<CR>', { desc = "[H]arpoon [A]dd file"})
--map('n', '<leader>hq', ':lua require("harpoon.ui").nav_file(1)<CR>', { desc = "[H]arpoon go to file 1"})
map('n', '<C-j>', ':lua require("harpoon.ui").nav_prev()<CR>', { desc = "[H]arpoon go to left"})
map('n', '<C-k>', ':lua require("harpoon.ui").nav_next()<CR>', { desc = "[H]arpoon go to right"})
