vim.pack.add({
    "https://github.com/EdenEast/nightfox.nvim",
    "https://github.com/neanias/everforest-nvim",
    "https://github.com/tssm/fairyfloss.vim",
    "https://github.com/rose-pine/neovim",
    "https://github.com/akinsho/toggleterm.nvim",
    "https://github.com/akinsho/bufferline.nvim",
    ---
    {
        src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
        version = vim.version.range('3')
    },
    -- dependencies
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/MunifTanjim/nui.nvim",
    -- optional, but recommended
    "https://github.com/nvim-tree/nvim-web-devicons",
    {src = "https://github.com/echasnovski/mini.bufremove"},
    "https://github.com/lewis6991/gitsigns.nvim",
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://codeberg.org/ziglang/zig.vim" },
})

-- =========================================
-- Neo Tree Setup
-- =========================================
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle reveal<CR>", {desc = "Toggle Neotree"})
vim.keymap.set("n", "<leader>E", "<cmd>Neotree dir=~/<CR>", {desc = "Open Neotree in the home director" })
vim.keymap.set("n", "<leader>bd", function() require("mini.bufremove").delete(0, false) end, { desc = "Delete buffer" })
