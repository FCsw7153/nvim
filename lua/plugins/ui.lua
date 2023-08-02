return {
	{
		"akinsho/bufferline.nvim",
		config = true,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = true,
	},
	{
		"RRethy/vim-illuminate",
		config = function()
			require("illuminate").configure()
		end
	}
}
