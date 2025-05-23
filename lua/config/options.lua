-- ~/.config/nvim/lua/config/options.lua
local opt = vim.opt

-- General
opt.mouse = "a"                         -- Enable mouse
opt.clipboard = "unnamedplus"           -- Use system clipboard
opt.fileencoding = "utf-8"              -- File encoding
opt.confirm = true                      -- Confirm before closing unsaved files

-- UI
opt.number = true                       -- Show line numbers
opt.relativenumber = true               -- Show relative line numbers
opt.signcolumn = "yes"                  -- Always show sign column
opt.cursorline = true                   -- Highlight current line
opt.wrap = false                        -- Disable line wrapping
opt.scrolloff = 8                       -- Keep 8 lines above/below cursor
opt.sidescrolloff = 8                   -- Keep 8 columns left/right of cursor
opt.colorcolumn = "80"                  -- Show ruler at 80 characters

-- Search
opt.ignorecase = true                   -- Ignore case in search
opt.smartcase = true                    -- Case-sensitive if uppercase present
opt.hlsearch = true                     -- Highlight search results
opt.incsearch = true                    -- Show search matches as you type

-- Indentation
opt.expandtab = true                    -- Use spaces instead of tabs
opt.tabstop = 4                         -- Tab width
opt.shiftwidth = 4                      -- Indent width
opt.softtabstop = 4                     -- Soft tab width
opt.smartindent = true                  -- Smart indentation
opt.autoindent = true                   -- Auto indentation

-- Splits
opt.splitbelow = true                   -- Horizontal splits below
opt.splitright = true                   -- Vertical splits to the right

-- Performance
opt.updatetime = 300                    -- Faster completion
opt.timeoutlen = 500                    -- Key timeout
opt.hidden = true                       -- Keep buffers open
opt.backup = false                      -- No backup files
opt.writebackup = false                 -- No backup while editing
opt.swapfile = false                    -- No swap files
opt.undofile = true                     -- Persistent undo
opt.undodir = vim.fn.expand("~/.local/share/nvim/undo")

-- Folding
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false                  -- Start with folds open
