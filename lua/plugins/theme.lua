return {
	{
		'Mofiqul/adwaita.nvim',
		lazy = false,
    pritory = 1000,
		config = function()
			vim.g.adwaita_darker = true
			vim.g.adwaita_disable_cursorline = true -- to disable cursorline
			vim.g.adwaita_transparent = true        -- makes the background transparent
			vim.cmd('colorscheme adwaita')
		end
	},
}
