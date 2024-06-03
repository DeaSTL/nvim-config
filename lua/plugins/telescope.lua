return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
    event = "VeryLazy",
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()

			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
			vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
			--vim.keymap.set('n', '<leader>pd', builtin.diagnostics, {})
			vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
			vim.keymap.set('n', '<leader>pl', builtin.live_grep, {})
			vim.keymap.set('n', '<leader>pm', function() 
				builtin.man_pages({ sections = { "1", "2", "3", "4", "5", "6", "7", "8" } })
			end)


			vim.keymap.set('n', '<leader>ps', function()
				vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
				vim.keymap.set("n", "<leader>pb", require('telescope.builtin').buffers)
				builtin.grep_string({ search = vim.fn.input("Grep > ") })
			end)

			vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
		end,
		opts = {
			defaults = {
				file_ignore_patterns = { "node_modules", ".git" },
				prompt_prefix = "🔭 ",
				selection_caret = " ",
				sorting_strategy = "ascending",
				layout_strategy = "horizontal",
				find_command = {
					"rg",
					"--no-heading",
					"--with-filename",
					"--line-number",
					"--column",
					"--smart-case"
				},

			}
		}
	}
}
