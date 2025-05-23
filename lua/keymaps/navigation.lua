-- ~/.config/nvim/lua/keymaps/navigation.lua
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- === QUICK NAVIGATION ===
-- Jump to start/end of line
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)

-- Center cursor when scrolling
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- === LEAP NAVIGATION ===
keymap("n", "s", "<Plug>(leap-forward)", opts)
keymap("n", "S", "<Plug>(leap-backward)", opts)
keymap("x", "s", "<Plug>(leap-forward)", opts)
keymap("x", "S", "<Plug>(leap-backward)", opts)
keymap("o", "s", "<Plug>(leap-forward)", opts)
keymap("o", "S", "<Plug>(leap-backward)", opts)

-- === SMART SPLITS ===
keymap("n", "<A-h>", ":SmartResizeLeft<CR>", opts)
keymap("n", "<A-j>", ":SmartResizeDown<CR>", opts)
keymap("n", "<A-k>", ":SmartResizeUp<CR>", opts)
keymap("n", "<A-l>", ":SmartResizeRight<CR>", opts)

-- === DIAGNOSTIC NAVIGATION ===
keymap("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>", opts)
keymap("n", "]d", ":lua vim.diagnostic.goto_next()<CR>", opts)
keymap("n", "<leader>xd", ":lua vim.diagnostic.setloclist()<CR>", opts)

-- === TROUBLE NAVIGATION ===
keymap("n", "<leader>xx", ":TroubleToggle<CR>", opts)
keymap("n", "<leader>xw", ":TroubleToggle workspace_diagnostics<CR>", opts)
keymap("n", "<leader>xd", ":TroubleToggle document_diagnostics<CR>", opts)
keymap("n", "<leader>xl", ":TroubleToggle loclist<CR>", opts)
keymap("n", "<leader>xq", ":TroubleToggle quickfix<CR>", opts)
keymap("n", "gR", ":TroubleToggle lsp_references<CR>", opts)

