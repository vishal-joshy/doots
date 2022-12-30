require('lualine').setup {
	options = {
		icons_enabled = false,
		theme = 'everforest',
		comment_seperators = '|',
		section_seperators = '',
	}
}

require('fidget').setup()


vim.cmd('colorscheme everforest')

