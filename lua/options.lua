vim.opt.termguicolors = true
-- =========================================
-- Orientation Options
-- =========================================
vim.opt.relativenumber = true
vim.opt.number = true

-- =========================================
-- Tabs options
-- =========================================
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- =========================================
-- Wrap and Text Options
-- =========================================
vim.opt.textwidth = 120
vim.opt.wrap = true
vim.opt.smartindent = true
vim.opt.inccommand = "split"
vim.opt.spell = true
vim.opt.spelllang = "en_us"
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 8

-- =========================================
-- Split Options
-- =========================================
vim.opt.splitbelow = true
vim.opt.splitright = true

-- =========================================
-- Case Search
-- =========================================
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.laststatus = 3 -- allow vertical split with vsplit

-- =========================================
-- Swap and Backup (disabled since I don't like it)
-- =========================================
-- vim.opt.swapfile = false
-- vim.opt.backup = false
-- vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
-- vim.opt.undofile = true

-- =========================================
-- Column Options
-- =========================================
vim.opt.colorcolumn = "0" -- default
vim.opt.signcolumn = "yes" -- LSP symbols and other stuffs
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- =========================================
-- Restore the cursor position
-- =========================================
vim.api.nvim_create_autocmd("BufReadPost", {
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local lcount = vim.api.nvim_buf_line_count(0)

		if mark[1] > 0 and mark[1] <= lcount then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})

-- =========================================
-- Highlight on Yank
-- =========================================
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    callback = function()
        vim.hl.on_yank()
    end,
})
-- =========================================
-- Format Zig files on save
-- =========================================
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.zig",
    callback = function(ev)
        vim.lsp.buf.format({
            bufnr = ev.buf,
            filter = function(client)
                return client.name == "zls"
            end,
        })
    end,
})
