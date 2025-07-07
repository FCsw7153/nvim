return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    enable = not vim.g.vscode,
    dependencies = { 
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make'
        }
    }
}
