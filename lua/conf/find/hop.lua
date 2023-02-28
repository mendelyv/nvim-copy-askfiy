-- https://github.com/phaazon/hop.nvim

local api = require("utils.api")

local M = {
    requires = {
        "hop",
    },
}

function M.before()
    M.register_key()
end

function M.load()
    M.hop.setup({
        { keys = "qwertyuiopasdfghjklzxcvbnm" },
    })
end

function M.after() end

function M.register_key()
    api.map.bulk_register({
        {
            mode = { "n", "v" },
            lhs = "<leader>hw",
            rhs = "<cmd>HopWord<cr>",
            options = { silent = true },
            description = "Jump to word head",
        },
        {
            mode = { "n", "v" },
            lhs = "<leader>hl",
            rhs = "<cmd>HopLine<cr>",
            options = { silent = true },
            description = "Jump to line",
        },
    })
end

return M
