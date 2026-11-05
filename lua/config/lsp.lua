vim.lsp.enable("ty")
vim.lsp.enable("zls")

-- =========================================
-- Shows error dignosis inline
-- =========================================
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})
