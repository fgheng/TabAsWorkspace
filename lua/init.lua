local M = {}

M.tabAsWork = {
    buffers = {},
    tabs = {},
}

function M.init()
    vim.api.nvim_create_autocmd({"BufAdd", "BufDelete"}, {
        callback = function (args)
            vim.notify("buf info")
            vim.notify(vim.inspect(args))
        end
    })
end

return M
