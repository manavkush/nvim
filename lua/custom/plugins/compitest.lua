return {
	'xeluxee/competitest.nvim',
	dependencies = 'MunifTanjim/nui.nvim',
	config = function()
		require('competitest').setup({
			testcases_directory = './tests',
			compile_directory = './bin',
			running_directory = './bin',

			template_file = {
				cpp = "~/Documents/PracticeProblems/template.cpp"
			},
			evaluate_template_modifiers = true,
		})
	end,
}
