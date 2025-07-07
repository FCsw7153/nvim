return {
    "folke/tokyonight.nvim",
    enable = not vim.g.vscode,
    opts = {
        style = "moon"
    },
    config = function (_, opts)
        require("tokyonight").setup(opts)
        vim.cmd("colorscheme tokyonight")
    end
}
