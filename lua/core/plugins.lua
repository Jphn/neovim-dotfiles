local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup({
	function(use)
		------------
		-- Packer --
		------------
		use("wbthomason/packer.nvim")

		-------------------------
		-- Theme (Tokyo Night) --
		-------------------------
		use({
			"folke/tokyonight.nvim",
			config = function()
				require("core.plugin_config.tokyonight")
			end,
		})

		--------------------------
		-- Startup (alpha-nvim) --
		--------------------------
		use({
			"goolord/alpha-nvim",
			requires = { "nvim-tree/nvim-web-devicons" },
			config = function()
				require("alpha").setup(require("alpha.themes.startify").config)
			end,
		})

		---------------
		-- Nvim Tree --
		---------------
		use({
			"nvim-tree/nvim-tree.lua",
			requires = {
				"nvim-tree/nvim-web-devicons", -- optional, for file icons
			},
			config = function()
				require("core.plugin_config.nvim-tree")
			end,
		})

		-------------
		-- Lualine --
		-------------
		use({
			"nvim-lualine/lualine.nvim",
			config = function()
				require("core.plugin_config.lualine")
			end,
		})

		----------------
		-- Bufferline --
		----------------
		use({
			"akinsho/bufferline.nvim",
			tag = "v3.*",
			requires = "nvim-tree/nvim-web-devicons",
			config = function()
				require("core.plugin_config.bufferline")
			end,
		})

		----------------
		-- Treesitter --
		----------------
		use("windwp/nvim-ts-autotag")
		use({
			"nvim-treesitter/nvim-treesitter",
			config = function()
				require("core.plugin_config.treesitter")
			end,
		})

		---------------
		-- Telescope --
		---------------
		use({
			"nvim-telescope/telescope.nvim",
			tag = "0.1.0",
			requires = { { "nvim-lua/plenary.nvim" } },
			config = function()
				require("core.plugin_config.telescope")
			end,
		})

		-------------------------------
		-- LSP (Mason, LspSignature, LspConfig) --
		-------------------------------
		use({
			"williamboman/mason.nvim",
			config = function()
				require("mason").setup()
			end,
		})
		use({
			"williamboman/mason-lspconfig.nvim",
			config = function()
				require("core.plugin_config.lsp.default")
			end,
		})
		use({
			"ray-x/lsp_signature.nvim",
			config = function()
				require("core.plugin_config.lsp.signature")
			end,
		})
		use({
			"neovim/nvim-lspconfig",
			config = function()
				require("core.plugin_config.lsp.servers")
			end,
		})

		---------------------------------------------
		-- Code styling, lint and others (Null LS) --
		---------------------------------------------
		use({
			"jose-elias-alvarez/null-ls.nvim",
			requires = { "nvim-lua/plenary.nvim" },
			config = function()
				require("core.plugin_config.null-ls")
			end,
		})

		---------------------------
		-- Completion (Nvim CMP) --
		---------------------------
		use("hrsh7th/cmp-path")
		use("hrsh7th/cmp-nvim-lsp")
		use("L3MON4D3/LuaSnip")
		use("saadparwaiz1/cmp_luasnip")
		use("rafamadriz/friendly-snippets")
		use({
			"hrsh7th/nvim-cmp",
			config = function()
				require("core.plugin_config.completions")
			end,
		})

		-----------------------------------
		-- Auto close pairs (Auto Pairs) --
		-----------------------------------
		use({
			"windwp/nvim-autopairs",
			config = function()
				require("core.plugin_config.auto-pairs")
			end,
		})

		------------
		-- Tabout --
		------------
		use({
			"abecodes/tabout.nvim",
			config = function()
				require("core.plugin_config.tabout")
			end,
			wants = { "nvim-treesitter" }, -- or require if not used so far
			after = { "nvim-cmp" }, -- if a completion plugin is using tabs load it before
		})

		-- Automatically set up your configuration after cloning packer.nvim
		-- Put this at the end after all plugins
		if packer_bootstrap then
			require("packer").sync()
		end
	end,
	config = {
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "single" })
			end,
		},
	},
})
