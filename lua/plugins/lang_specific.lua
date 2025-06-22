-- ~/.config/nvim/lua/plugins/lang_specific.lua
return {
	-- Python virtual environment selector
	{
		"linux-cultist/venv-selector.nvim",
		ft = "python",
		config = function()
			require("venv-selector").setup({
				name = { "venv", ".venv", "env", ".env" },
				auto_refresh = true,
				search_venv_managers = true,
				search_workspace = true,
				search = true,
				dap_enabled = true,
				fd_binary_name = "fd",
				notify_user_on_activate = true,
			})
		end,
	},

	-- Iron REPL
	{
		"Vigemus/iron.nvim",
		ft = "python",
		config = function()
			local iron = require("iron.core")
			iron.setup({
				config = {
					scratch_repl = true,
					repl_definition = {
						python = {
							command = { "python" },
							format = require("iron.fts.common").bracketed_paste,
						},
					},
					repl_open_cmd = require("iron.view").bottom(40),
				},
				keymaps = {
					send_motion = "<space>sc",
					visual_send = "<space>sc",
					send_file = "<space>sf",
					send_line = "<space>sl",
					send_mark = "<space>sm",
					mark_motion = "<space>mc",
					mark_visual = "<space>mc",
					remove_mark = "<space>md",
					cr = "<space>s<cr>",
					interrupt = "<space>s<space>",
					exit = "<space>sq",
					clear = "<space>cl",
				},
				highlight = {
					italic = true,
				},
				ignore_blank_lines = true,
			})
		end,
	},

	-- Markdown preview
	{
		"iamcco/markdown-preview.nvim",
		ft = "markdown",
		build = function()
			vim.fn.system({ "npm", "install", "--prefix", vim.fn.stdpath("data") .. "/lazy/markdown-preview.nvim/app" })
		end,
		config = function()
			vim.g.mkdp_filetypes = { "markdown" }
			vim.g.mkdp_auto_start = 0
			vim.g.mkdp_auto_close = 1
			vim.g.mkdp_refresh_slow = 0
			vim.g.mkdp_command_for_global = 0
			vim.g.mkdp_open_to_the_world = 0
			vim.g.mkdp_open_ip = ""
			vim.g.mkdp_browser = ""
			vim.g.mkdp_echo_preview_url = 0
			vim.g.mkdp_browserfunc = ""
			vim.g.mkdp_preview_options = {
				mkit = {},
				katex = {},
				uml = {},
				maid = {},
				disable_sync_scroll = 0,
				sync_scroll_type = "middle",
				hide_yaml_meta = 1,
				sequence_diagrams = {},
				flowchart_diagrams = {},
				content_editable = false,
				disable_filename = 0,
				toc = {},
			}
			vim.g.mkdp_markdown_css = ""
			vim.g.mkdp_highlight_css = ""
			vim.g.mkdp_port = ""
			vim.g.mkdp_page_title = "「${name}」"
			vim.g.mkdp_images_path = ""
		end,
	},
	-- Treesitter endwise (auto end blocks)
	{
		"RRethy/nvim-treesitter-endwise",
		ft = { "lua", "ruby", "vim", "bash", "python" },
		config = function()
			require("nvim-treesitter.configs").setup({
				endwise = {
					enable = true,
					sync_install = true,
				},
			})
		end,
	},
}
