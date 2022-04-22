return require('packer').startup(function()
    -- Startup
    use 'lewis6991/impatient.nvim'

    -- Plugin management
    use 'wbthomason/packer.nvim'

    -- File explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        }
    }

    -- Status and bufferline
    use {
        'nvim-lualine/lualine.nvim',
        'akinsho/bufferline.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
end)

