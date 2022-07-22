-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- improve startup time for Neovim
    use("lewis6991/impatient.nvim")

    -- theme
    use({
        "pappasam/papercolor-theme-slim",
        config = function()
            vim.cmd([[colorscheme PaperColorSlim]])
        end
    })

    use({
        "hrsh7th/nvim-cmp",
        requires = {"hrsh7th/cmp-buffer", "hrsh7th/cmp-path", "hrsh7th/cmp-cmdline"},
        config = function()
            local cmp = require 'cmp'
            cmp.setup({
                completion = {
                    autocomplete = true,
                    completeopt = 'menu,menuone,noinsert'
                },
                mapping = {
                    ["<cr>"] = cmp.mapping.confirm({
                        select = true
                    }),
                    ["<s-tab>"] = cmp.mapping.select_prev_item(),
                    ["<tab>"] = cmp.mapping.select_next_item()
                },
                sources = ({
                    {name = 'buffer'},
                }, {
                    {name = 'path'},
                })
            })
        end
    })

    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup()
        end
    })

    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        },
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'ayu_light'
                }
            })
        end
    }
end)

