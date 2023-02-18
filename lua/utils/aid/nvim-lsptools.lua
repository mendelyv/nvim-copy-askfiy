local M = {}

function M.didChangeConfiguration(client, filetype)
    vim.api.nvim_create_autocmd(
        { "DirChanged", "CursorMoved", "BufWinEnter", "BufFilePost", "InsertEnter", "BufNewFile" },
        {
            pattern = { filetype, "NvimTree_*" },
            callback = function()
                client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
            end,
        }
    )
end

function M.filter_publish_diagnostics(a, params, client_info, extra_message, config)
    ---@diagnostic disable-next-line: unused-local
    local client = vim.lsp.get_client_by_id(client_info.client_id)

    if extra_message.ignore_diagnostic_message then
        local new_index = 1

        for _, diagnostic in ipairs(params.diagnostics) do
            if not vim.tbl_contains(extra_message.ignore_diagnostic_message, diagnostic.message) then
                params.diagnostics[new_index] = diagnostic
                new_index = new_index + 1
            end
        end

        for i = new_index, #params.diagnostics do
            params.diagnostics[i] = nil
        end
    end

    ---@diagnostic disable-next-line: redundant-parameter
    vim.lsp.diagnostic.on_publish_diagnostics(a, params, client_info, extra_message, config)
end

return M
