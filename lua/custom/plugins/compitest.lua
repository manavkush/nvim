return {
	'xeluxee/competitest.nvim',
	lazy = true,
	dependencies = 'MunifTanjim/nui.nvim',
	config = function()
		require('competitest').setup({
			filetypes = { "cpp" },
			runner_ui = {
				interface = "split",
			},

			testcases_directory = './testcases',
			compile_directory = './bin',
			running_directory = './bin',
			compile_command = {
				cpp = { exec = "g++", args = { "$(FABSPATH)", "-o", "$(FNOEXT)" } }
			},

			template_file = {
				cpp = "~/Documents/PracticeProblems/template.cpp"
			},
			evaluate_template_modifiers = true,
		})
	end,
}
