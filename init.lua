-- bootstrap lazy.nvim, LazyVim and your plugins

vim.g.mapleader = ","

vim.api.nvim_set_hl(0, "WinSeparator", { fg = "orange", bold = true })
require("config.lazy")
