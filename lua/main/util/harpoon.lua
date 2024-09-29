return {
	"ThePrimeagen/harpoon",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = true,
	keys = {
		{ "<leader>em", "<cmd>lua require('harpoon.mark').add_file()<cr>"},
		{ "<leader>ee", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>"},
		{ "<leader>en", "<cmd>lua require('harpoon.ui').nav_next()<cr>"},
		{ "<leader>ep", "<cmd>lua require('harpoon.ui').nav_next()<cr>"},
		{ "<leader>ej", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>"},
		{ "<leader>ek", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>"},
		{ "<leader>el", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>"},
		{ "<leader>e;", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>"},
	},
}

