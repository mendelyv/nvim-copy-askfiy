local M = {
    requires = {
        "lspsaga",
    },
}

function M.before() end

function M.load()
    M.lspsaga.setup({
        border_style = "round",
        error_sign = " ",
        warn_sign = " ",
        hint_sign = " ",
        infor_sign = " ",
        diagnostic_header_icon = " ",
        -- 正在写入的行提示
        code_action_icon = " ",
        code_action_prompt = {
            -- 显示写入行提示
            -- 如果为 true ，则写代码时会在左侧行号栏中显示你所定义的图标
            enable = false,
            sign = true,
            sign_priority = 40,
            virtual_text = true,
        },
        -- 快捷键配置
        code_action_keys = {
            quit = "<Esc>",
            exec = "<CR>",
        },
        rename_action_keys = {
            quit = "<Esc>",
            exec = "<CR>",
        },
    })

    vim.diagnostic.config({
        -- 诊断的虚拟文本
        virtual_text = {
            -- disable = true,
            -- 显示的前缀，可选项：'●', '▎', 'x'
            -- 默认是一个小方块，不是很好看，所以这里改了
            prefix = "●",
            -- 是否总是显示前缀？是的
            source = "always",
            severity = {
                -- 诊断的级别，可选项：'error', 'warning', 'info', 'hint'
                min = vim.diagnostic.severity.ERROR,
            },
        },
        float = {
            -- 是否显示诊断来源？是的
            source = "always",
        },
        -- 在插入模式下是否显示诊断？不要
        update_in_insert = false,
        -- 开启诊断按优先级排序
        severity_sort = true,
    })
end

function M.after() end

return M
