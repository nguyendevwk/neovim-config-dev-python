-- ~/.config/nvim/lua/keymaps/leader.lua
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- === FILE OPERATIONS (Space + f) ===
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>fr", ":Telescope oldfiles<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fu", ":Telescope undo<CR>", opts)

-- === BUFFER OPERATIONS (Space + b) ===
keymap("n", "<leader>bd", ":Bdelete<CR>", opts)
keymap("n", "<leader>bn", ":bnext<CR>", opts)
keymap("n", "<leader>bp", ":bprevious<CR>", opts)
keymap("n", "<leader>bl", ":Telescope buffers<CR>", opts)

-- === WINDOW OPERATIONS (Space + w) ===
keymap("n", "<leader>wh", "<C-w>s", opts)        -- Split horizontal
keymap("n", "<leader>wv", "<C-w>v", opts)        -- Split vertical
keymap("n", "<leader>wc", "<C-w>c", opts)        -- Close window
keymap("n", "<leader>wo", "<C-w>o", opts)        -- Only window
keymap("n", "<leader>w=", "<C-w>=", opts)        -- Equal windows

-- === TREE EXPLORER (Space + e) ===
keymap("n", "<leader>ee", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>ef", ":NvimTreeFindFile<CR>", opts)
keymap("n", "<leader>er", ":NvimTreeRefresh<CR>", opts)

-- === SEARCH & REPLACE (Space + s) ===
keymap("n", "<leader>ss", ":Telescope current_buffer_fuzzy_find<CR>", opts)
keymap("n", "<leader>sw", ":Telescope grep_string<CR>", opts)
keymap("n", "<leader>sr", ":Spectre<CR>", opts)
keymap("n", "<leader>sp", ":Spectre open_file_search<CR>", opts)

-- === LSP OPERATIONS (Space + l) ===
keymap("n", "<leader>lf", ":lua vim.lsp.buf.format()<CR>", opts)
keymap("n", "<leader>li", ":LspInfo<CR>", opts)
keymap("n", "<leader>lI", ":Mason<CR>", opts)
keymap("n", "<leader>la", ":lua vim.lsp.buf.code_action()<CR>", opts)
keymap("n", "<leader>lr", ":lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "<leader>ld", ":Lspsaga goto_definition<CR>", opts)
keymap("n", "<leader>lD", ":Lspsaga peek_definition<CR>", opts)
keymap("n", "<leader>lh", ":Lspsaga hover_doc<CR>", opts)
keymap("n", "<leader>ls", ":Lspsaga signature_help<CR>", opts)

-- === GIT OPERATIONS (Space + g) ===
keymap("n", "<leader>gg", ":Git<CR>", opts)
keymap("n", "<leader>gs", ":Gitsigns stage_hunk<CR>", opts)
keymap("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", opts)
keymap("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", opts)
keymap("n", "<leader>gb", ":Gitsigns blame_line<CR>", opts)
keymap("n", "<leader>gd", ":Gitsigns diffthis<CR>", opts)

-- === DEBUG OPERATIONS (Space + d) ===
keymap("n", "<leader>db", ":DapToggleBreakpoint<CR>", opts)
keymap("n", "<leader>dc", ":DapContinue<CR>", opts)
keymap("n", "<leader>di", ":DapStepInto<CR>", opts)
keymap("n", "<leader>do", ":DapStepOver<CR>", opts)
keymap("n", "<leader>dO", ":DapStepOut<CR>", opts)
keymap("n", "<leader>dr", ":DapRestart<CR>", opts)
keymap("n", "<leader>dl", ":DapShowLog<CR>", opts)
keymap("n", "<leader>dt", ":DapTerminate<CR>", opts)
keymap("n", "<leader>du", ":lua require('dapui').toggle()<CR>", opts)

-- === TEST OPERATIONS (Space + t) ===
keymap("n", "<leader>tt", ":lua require('neotest').run.run()<CR>", opts)
keymap("n", "<leader>tf", ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", opts)
keymap("n", "<leader>td", ":lua require('neotest').run.run({strategy = 'dap'})<CR>", opts)
keymap("n", "<leader>ts", ":lua require('neotest').run.stop()<CR>", opts)
keymap("n", "<leader>ta", ":lua require('neotest').run.attach()<CR>", opts)
keymap("n", "<leader>to", ":lua require('neotest').output.open()<CR>", opts)
keymap("n", "<leader>tO", ":lua require('neotest').output_panel.toggle()<CR>", opts)
keymap("n", "<leader>tS", ":lua require('neotest').summary.toggle()<CR>", opts)

-- === TERMINAL (Space + T) ===
keymap("n", "<leader>Tt", ":ToggleTerm<CR>", opts)
keymap("n", "<leader>Th", ":ToggleTerm direction=horizontal<CR>", opts)
keymap("n", "<leader>Tv", ":ToggleTerm direction=vertical<CR>", opts)
keymap("n", "<leader>Tf", ":ToggleTerm direction=float<CR>", opts)

-- === PRODUCTIVITY (Space + m) ===
keymap("n", "<leader>mm", ":MarkdownPreview<CR>", opts)
keymap("n", "<leader>mz", ":ZenMode<CR>", opts)
keymap("n", "<leader>mu", ":UndotreeToggle<CR>", opts)
keymap("n", "<leader>mo", ":AerialToggle<CR>", opts)
keymap("n", "<leader>mw", ":WhichKey<CR>", opts)

-- === PYTHON SPECIFIC (Space + p) ===
keymap("n", "<leader>pv", ":VenvSelect<CR>", opts)
keymap("n", "<leader>pi", ":IronRepl<CR>", opts)
keymap("n", "<leader>pr", ":IronRestart<CR>", opts)
keymap("n", "<leader>pf", ":IronFocus<CR>", opts)
keymap("n", "<leader>ph", ":IronHide<CR>", opts)
