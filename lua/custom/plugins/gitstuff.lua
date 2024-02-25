return {
	{
		-- git signs
		"lewis6991/gitsigns.nvim",
		config = function()
			require('gitsigns').setup {}
		end
	},
	{
		-- git nvim
		"dinhhuy258/git.nvim",
		config = function()
			local status, git = pcall(require, "git")
			if (not status) then return end
			git.setup({
				keymaps = {
					-- Open blame window
					blame = "<Leader>gb",
					-- Open file/folder in git repository
					browse = "<Leader>go",
				}
			})
		end
	},
	{
		-- fugitive
		'tpope/vim-fugitive',
		lazy = true,
		-- load when :G is entered
		cmd = { 'G' },
	},
	{
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
}
