vim.opt.tabstop = 2           -- Tamano de tab
vim.opt.expandtab = true      -- Transformar tab a espacios
vim.opt.shiftwidth = 2
vim.g.mapleader = ' '         -- Tecla leader

vim.opt.number = true         -- Show line numbers
vim.opt.mouse = 'a'           -- Habilita mouse a = all modes
vim.opt.scrolloff = 8         -- Padding de lineas del borde
vim.opt.relativenumber = true
vim.opt.ruler = true          -- Muestra col, row del cursor
vim.opt.fillchars = 'eob:-'   -- Character empty line
vim.opt.ignorecase = true     -- Ignorar uppercase en busqqueda
vim.opt.smartcase = true      -- Buscar uppercase solo si hay uppercase en la busqueda
vim.opt.hlsearch = false      -- Resaltar resultado busqueda anterior
vim.opt.wrap = true
vim.opt.breakindent = true

vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<CR>')

vim.keymap.set({'n', 'x'}, 'gy', '"+y')
vim.keymap.set({'n', 'x'}, 'gp', '"+p')

vim.keymap.set({'n', 'x'}, 'x', '"_x')
vim.keymap.set({'n', 'x'}, 'X', '"_d')
