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
                sources = {{
                    name = 'buffer'
                }, {
                    name = "path"
                }}
            })
        end
    })

    -- Treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        requires = {"nvim-treesitter/nvim-treesitter-textobjects", "JoosepAlviste/nvim-ts-context-commentstring",
                    "p00f/nvim-ts-rainbow", "nvim-treesitter/playground"},
        run = ":TSUpdate",
        config = function()
            require('nvim-treesitter.configs').setup({
                -- One of "all", "maintained" (parsers with maintainers), or a list of languages
                ensure_installed = "maintained",

                -- Install languages synchronously (only applied to `ensure_installed`)
                sync_install = false,

                -- List of parsers to ignore installing
                -- ignore_install = {"javascript"},

                highlight = {
                    -- `false` will disable the whole extension
                    enable = true,

                    -- list of language that will be disabled
                    -- disable = {"c", "rust"},

                    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                    -- Using this option may slow down your editor, and you may see some duplicate highlights.
                    -- Instead of true it can also be a list of languages
                    additional_vim_regex_highlighting = false
                }
            })
        end
    })

    -- telescope 
    use {
        'nvim-telescope/telescope.nvim',
        requires = {"nvim-lua/plenary.nvim", "nvim-telescope/telescope-project.nvim", {
            "nvim-telescope/telescope-fzf-native.nvim",
            run = "make"
        }},
        config = function()
            require('telescope').setup()
        end
    }

    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup()
        end
    })

    -- nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons' -- optional, for file icon
        },
        config = function()
            require'nvim-tree'.setup {
                auto_close = true
            }
        end
    }

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

