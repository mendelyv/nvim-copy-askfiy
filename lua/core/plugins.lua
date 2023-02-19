local aid_lazy = require("utils.aid.lazy")

local M = {}

M.theme = {
    {
        "sainnhe/everforest",
        priority = 100,
    },
}

M.basic = {
    {
        "rcarriga/nvim-notify",
        priority = 90,
    },
    {
        "williamboman/mason.nvim",
        event = { "VimEnter" },
    },
    {
        "nvim-tree/nvim-web-devicons",
        event = { "VimEnter" },
    },
    {
        "nvim-lua/plenary.nvim",
        lazy = true,
    },
}

M.lsp = {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            { "williamboman/mason-lspconfig.nvim" },
        },
    },
    -- in nvim-lspconfig config file require neodev
    {
        "folke/neodev.nvim",
        lazy = true,
    },
    -- in nvim-lspconfig config file require nvim-navic
    {
        "SmiteshP/nvim-navic",
        lazy = true,
    },
    {
        "j-hui/fidget.nvim",
        event = { "UIEnter" },
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        event = { "UIEnter" },
    },
}

M.complete = {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-cmdline" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "saadparwaiz1/cmp_luasnip" },
            { "kristijanhusak/vim-dadbod-completion" },
            -- { "tzachar/cmp-tabnine", build = "./install.sh" },
        },
        event = { "InsertEnter", "CmdlineEnter" },
    },
    {
        "L3MON4D3/LuaSnip",
        -- in nvim-cmp config file require luasnip
        lazy = true,
        dependencies = {
            { "rafamadriz/friendly-snippets" },
        },
    },
}

M.editor = {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        dependencies = {
            { "mrjones2014/nvim-ts-rainbow" },
            { "windwp/nvim-ts-autotag" },
            { "JoosepAlviste/nvim-ts-context-commentstring" },
            { "nvim-lua/plenary.nvim" },
        },
        event = { "UIEnter" },
    },
    {
        "RRethy/vim-illuminate",
        event = { "UIEnter" },
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = { "UIEnter" },
    },
    {
        "numToStr/Comment.nvim",
        dependencies = {
            { "JoosepAlviste/nvim-ts-context-commentstring" },
        },
        event = { "VeryLazy" },
    },
    {
        "ur4ltz/surround.nvim",
        dependencies = {
            { "tpope/vim-repeat" },
        },
        event = { "VeryLazy" },
    },
    {
        "AndrewRadev/switch.vim",
        event = { "VeryLazy" },
    },
    {
        "mg979/vim-visual-multi",
        event = { "VeryLazy" },
    },
    {
        "windwp/nvim-autopairs",
        event = { "InsertEnter" },
    },
}

M.find = {
    {
        "kevinhwang91/nvim-hlslens",
        event = { "CmdlineEnter" },
        lazy = true,
    },
    {
        "folke/todo-comments.nvim",
        event = { "UIEnter" },
    },
    {
        "AckslD/nvim-neoclip.lua",
        dependencies = {
            "kkharji/sqlite.lua",
        },
        event = { "VeryLazy" },
    },
    {
        "phaazon/hop.nvim",
        cmd = {
            "HopWord",
            "HopLine",
            "HopChar1",
            "HopChar1CurrentLine",
        },
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim" },
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
        },
        lazy = true,
    },
}

M.language = {
    {
        "davidgranstrom/nvim-markdown-preview",
        ft = { "markdown" },
    },
    {
        "Vimjas/vim-python-pep8-indent",
        ft = { "python" },
    },
}

M.tools = {
    {
        "norcalli/nvim-colorizer.lua",
        event = { "UIEnter" },
    },
    {
        "lewis6991/gitsigns.nvim",
        event = { "UIEnter" },
    },
    {
        "uga-rosa/translate.nvim",
        event = { "VeryLazy" },
    },
    {
        "olimorris/persisted.nvim",
        event = { "VeryLazy" },
    },
    {
        "folke/which-key.nvim",
        event = { "VeryLazy" },
    },
    {
        "askfiy/nvim-picgo",
        lazy = true,
    },
    {
        "kristijanhusak/vim-carbon-now-sh",
        cmd = { "CarbonNowSh" },
    },
}

M.views = {
    {
        "akinsho/bufferline.nvim",
        event = { "UIEnter" },
    },
    {
        "nvim-lualine/lualine.nvim",
        event = { "UIEnter" },
    },
    {
        "mbbill/undotree",
        event = { "UIEnter" },
    },
    {
        "stevearc/aerial.nvim",
        event = { "UIEnter" },
    },
    {
        "dstein64/nvim-scrollview",
        event = { "UIEnter" },
    },
    {
        "nvim-tree/nvim-tree.lua",
        lazy = true,
    },
    {
        "nvim-pack/nvim-spectre",
        lazy = true,
    },
    {
        "akinsho/toggleterm.nvim",
        lazy = true,
    },
    {
        "kristijanhusak/vim-dadbod-ui",
        dependencies = {
            { "tpope/vim-dadbod" },
        },
        cmd = { "DBUIToggle" },
    },
}

aid_lazy.entry(M)

return M
