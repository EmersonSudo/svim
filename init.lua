require("vim._core.ui2").enable({})
require("options")
require("keymaps")
require("pack")
require("commands")
require("config.lsp")

-- =========================================
-- Color and Theme
-- =========================================
require("rose-pine").setup({
  variant = "moon",
  dark_variant = "moon",

  styles = {
    bold = true,
    italic = false,
    transparency = false,
  },

  highlight_groups = {
    Comment = { fg = "#908caa", italic = true },
    Function = { fg = "#c4a7e7" },
    Keyword = { fg = "#ebbcba" },
    String = { fg = "#f6c177" },
  },
})
-- =========================================
-- Terminal Inside Neovim
-- =========================================
vim.cmd.colorscheme("rose-pine")
require("toggleterm").setup({
  size = 12,
  open_mapping = [[<C-/>]],
  -- direction = "float",
  float_opts = {
    border = "curved",
  },
})
-- =========================================
-- Buffer Line
-- =========================================
require("bufferline").setup({
  options = {
    mode = "buffers",
    numbers = "ordinal",
    diagnostics = "nvim_lsp",
    separator_style = "slant",
  },
})
-- =========================================
-- Neo Tree Modifications
-- =========================================
require("neo-tree").setup({
  filesystem = {
    filtered_items = {
        visible = true,
      -- hide_gitignored = false,
      -- hide_dotfiles = false,
    },
  },
})
