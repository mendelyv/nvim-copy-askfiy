local api = require("utils.api")

local M = {
    -- ui settings
    show_winbar = true,
    transparent = true,
    float_border = true,
    -- edit settings
    auto_save = false,
    auto_switch_input = true,
    auto_restore_cursor_position = true,
    auto_remove_new_lines_comment = true,
    -- directory settings
    storage_directory = api.path.join(vim.fn.stdpath("data"), "store"),
    mason_install_directory = api.path.join(vim.fn.stdpath("data"), "mason"),
    global_config_directory = api.path.join(vim.fn.stdpath("config"), "config"),
    -- formatter
    sql_langkind = "postgresql",
}

return M
