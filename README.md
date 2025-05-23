### Cài đặt và khởi chạy

#### 1. Backup cấu hình cũ (nếu có)

```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

#### 2. Tạo cấu trúc thư mục

```bash
mkdir -p ~/.config/nvim/lua/{config,keymaps,plugins}
```

#### 3. Copy các file cấu hình

Sao chép tất cả các file từ artifact này vào thư mục `~/.config/nvim/` theo đúng cấu trúc.

#### 4. Cài đặt dependencies bên ngoài

```bash
# Python formatters and linters
pip install black isort flake8 mypy debugpy

# Node.js tools (nếu cần)
npm install -g prettier prettierd eslint_d

# Other tools
# Trên Ubuntu/Debian:
sudo apt install ripgrep fd-find shellcheck

# Trên macOS:
brew install ripgrep fd shellcheck

# Trên Windows (với Scoop):
scoop install ripgrep fd shellcheck
```

#### 5. Khởi động Neovim

```bash
nvim
```

Plugin manager sẽ tự động cài đặt tất cả plugins khi khởi động lần đầu.

## Hướng dẫn sử dụng

## Hướng dẫn sử dụng chi tiết

### Keymaps cơ bản (dễ nhớ, tránh function keys)

#### Navigation cơ bản

-   **Leader key**: `Space` (dễ tiếp cận nhất)
-   **Exit insert mode**: `jk` hoặc `kj` (thay thế Esc)
-   **Save file**: `<Space>w` (Write)
-   **Quit**: `<Space>Q` (Quit all)
-   **Clear search**: `<Space>h` (Hide search)

#### Di chuyển nhanh

-   **Window navigation**: `Ctrl+h/j/k/l` (vim standard)
-   **Buffer navigation**: `Shift+h/l` (nhanh gọn)
-   **Jump anywhere**: `s` + 2 ký tự (Leap navigation)
-   **Start/End of line**: `H` và `L` (thay ^ và $)

#### File operations (Space + f)

```
<Space>ff - Find files (fuzzy search)
<Space>fg - Grep text trong project
<Space>fb - Browse buffers
<Space>fr - Recent files
<Space>fp - Find projects
<Space>fh - Help tags
```

#### Explorer (Space + e)

```
<Space>ee - Toggle file explorer
<Space>ef - Find current file in explorer
<Space>er - Refresh explorer
```

#### Code operations (Space + l)

```
<Space>lf - Format code
<Space>la - Code actions (sửa lỗi, refactor)
<Space>lr - Rename symbol
<Space>ld - Go to definition
<Space>lD - Peek definition
<Space>lh - Hover documentation
<Space>li - LSP info
```

#### Git operations (Space + g)

```
<Space>gg - Git status
<Space>gs - Stage hunk
<Space>gr - Reset hunk
<Space>gp - Preview hunk
<Space>gb - Blame line
<Space>gd - Diff this
<Space>ga - Git add all
<Space>gc - Git commit
```

#### Debug operations (Space + d)

```
<Space>db - Toggle breakpoint
<Space>dc - Continue/Start debugging
<Space>di - Step into
<Space>do - Step over
<Space>dO - Step out
<Space>dr - Restart
<Space>dt - Terminate
<Space>du - Toggle DAP UI
```

#### Testing (Space + t)

```
<Space>tt - Run nearest test
<Space>tf - Run all tests in file
<Space>td - Debug nearest test
<Space>ts - Stop tests
<Space>to - Open test output
<Space>tS - Toggle test summary
```

#### Terminal (Space + T)

```
<Space>Tt - Toggle terminal
<Space>Th - Horizontal terminal
<Space>Tv - Vertical terminal
<Space>Tf - Floating terminal
<Space>Tg - Lazygit
<Space>Tp - Python REPL
```

#### Python specific (Space + p)

```
<Space>pv - Select virtual environment
<Space>pi - Iron REPL
<Space>pr - Restart REPL
<Space>pf - Focus REPL
<Space>sc - Send code to REPL
<Space>sl - Send line to REPL
<Space>sf - Send file to REPL
```

### Workflow cho Python Development

#### 1. Setup project mới

```bash
# Tạo virtual environment
python -m venv .venv
source .venv/bin/activate  # Linux/Mac
# hoặc .venv\Scripts\activate  # Windows

# Cài packages
pip install black isort flake8 mypy pytest debugpy

# Mở Neovim
nvim .
```

#### 2. Chọn virtual environment

-   `<Space>pv` → chọn .venv từ danh sách
-   Neovim sẽ tự động detect và sử dụng Python interpreter đúng

#### 3. Code với LSP support

-   Autocompletion với `Tab`/`Shift+Tab`
-   Copilot suggestions với `Ctrl+l`
-   Go to definition: `<Space>ld`
-   Code actions: `<Space>la`
-   Rename: `<Space>lr`

#### 4. Formatting & Linting

-   Auto format on save (Black + isort)
-   Manual format: `<Space>lf`
-   Linting errors hiển thị realtime
-   Fix với code actions: `<Space>la`

#### 5. Testing workflow

-   Run test: `<Space>tt` (ở function test)
-   Run all tests in file: `<Space>tf`
-   Debug test: `<Space>td`
-   View test output: `<Space>to`

#### 6. Debugging

-   Set breakpoint: `<Space>db`
-   Start debug: `<Space>dc`
-   Step through code: `<Space>di/do/dO`
-   Variables panel tự động mở

#### 7. REPL workflow

-   Open Python REPL: `<Space>pi`
-   Send current line: `<Space>sl`
-   Send selection: select text → `<Space>sc`
-   Send entire file: `<Space>sf`

### Workflow cho Web Development

#### 1. JavaScript/TypeScript

-   LSP: tsserver (tự động cài qua Mason)
-   Formatting: Prettier
-   Linting: ESLint
-   Same keymaps như Python

#### 2. HTML/CSS

-   Emmet support qua LSP
-   Auto-formatting với Prettier
-   Live preview với browser

#### 3. REST API testing

-   Tạo file `.http` hoặc `.rest`
-   Write HTTP requests
-   Run với `<Space>rr`
-   Preview với `<Space>rp`

### Productivity Features

#### 1. Multi-cursor editing

-   Visual block: `Ctrl+v`
-   Select word: `*` (forward), `#` (backward)
-   Increment numbers: `Ctrl+a`, `Ctrl+x`

#### 2. Text objects

-   Function: `af`/`if` (around/inside function)
-   Class: `ac`/`ic`
-   Parameter: `aa`/`ia`

#### 3. Folding

-   Fold/unfold: `za`
-   Fold all: `zM`
-   Unfold all: `zR`

#### 4. Search & Replace

-   Global search/replace: `<Space>sr` (Spectre)
-   In current file: `<Space>sp`
-   Find word under cursor: `<Space>sw`

#### 5. Todo management

-   `TODO:`, `FIXME:`, `HACK:`, `NOTE:` được highlight
-   Jump giữa todos với `]t`, `[t`

### Customization Guide

#### 1. Thay đổi colorscheme

```lua
-- ~/.config/nvim/lua/plugins/colorscheme.lua
-- Thay đổi flavour:
flavour = "latte"  -- sáng
flavour = "frappe" -- tối vừa
flavour = "macchiato" -- tối
flavour = "mocha"  -- tối nhất
```

#### 2. Thêm keymaps riêng

```lua
-- ~/.config/nvim/lua/keymaps/custom.lua
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Ví dụ: Quick save and quit
keymap("n", "<leader>x", ":wq<CR>", opts)

-- Load trong init.lua:
require("keymaps.custom")
```

#### 3. Thêm LSP servers

```lua
-- ~/.config/nvim/lua/plugins/lsp.lua
-- Trong mason-lspconfig setup:
ensure_installed = {
  "pyright", "lua_ls", "tsserver",
  "rust_analyzer",  -- Rust
  "gopls",          -- Go
  "clangd",         -- C/C++
  -- ...
}
```

#### 4. Custom formatters

```lua
-- ~/.config/nvim/lua/plugins/format_lint.lua
formatters_by_ft = {
  python = { "black", "isort" },
  rust = { "rustfmt" },
  go = { "gofmt" },
  -- ...
}
```

### Troubleshooting

#### 1. Plugin không load

```bash
# Xóa cache và reinstall
rm -rf ~/.local/share/nvim
nvim --headless "+Lazy! sync" +qa
```

#### 2. LSP không hoạt động

```bash
# Check LSP status
:LspInfo
:Mason

# Restart LSP
:LspRestart
```

#### 3. Python virtual env không detect

```bash
# Manual select
:VenvSelect

# Check Python path
:lua print(vim.fn.exepath('python'))
```

#### 4. Formatting không chạy

```bash
# Check conform status
:ConformInfo

# Manual format
:Format

# Check if formatters installed
pip list | grep black
```

#### 5. Performance issues với large files

```lua
-- ~/.config/nvim/lua/config/options.lua
-- Tăng limits:
opt.updatetime = 500  -- từ 300
opt.timeoutlen = 1000 -- từ 500

-- Disable cho files lớn:
vim.api.nvim_create_autocmd("BufReadPre", {
  callback = function()
    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(0))
    if ok and stats and stats.size > 1000000 then -- 1MB
      vim.opt_local.syntax = "off"
      vim.opt_local.spell = false
      vim.opt_local.swapfile = false
    end
  end,
})
```

### Advanced Tips

#### 1. Session management

```lua
-- Auto-save session on exit
vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    vim.cmd("mksession! ~/.config/nvim/session.vim")
  end,
})

-- Restore with: nvim -S ~/.config/nvim/session.vim
```

#### 2. Project-specific settings

```lua
-- .nvim.lua trong project root
return {
  formatting = {
    python = { "autopep8" }, -- thay black
  },
  lsp = {
    python = {
      settings = {
        python = {
          analysis = {
            typeCheckingMode = "strict"
          }
        }
      }
    }
  }
}
```

#### 3. Custom snippets

```lua
-- ~/.config/nvim/snippets/python.lua
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("python", {
  s("def", {
    t("def "), i(1, "function_name"), t("("), i(2), t("):"),
    t({"", "    "}), i(3, "pass"),
  }),
})
```

#### 4. Git workflow enhancement

```lua
-- Auto-commit hooks
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.py",
  callback = function()
    -- Auto-add changed Python files
    vim.fn.system("git add " .. vim.fn.expand("%"))
  end,
})
```
