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
end)

