local set = vim.opt

set.shortmess:append "c"
set.whichwrap = 'b,s,<,>,[,],h,l'
set.clipboard = "unnamedplus"

set.expandtab = true
set.smarttab = true
set.shiftwidth = 2
set.tabstop = 2
set.softtabstop = 2
set.scrolloff = 3
set.sidescrolloff = 5
set.conceallevel = 0
set.pumheight = 10
set.cmdheight = 2
set.showtabline = 2

set.backup = false
set.writebackup = false
set.updatetime = 300
set.timeoutlen = 100

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.termguicolors = true
set.showmode = false
set.splitbelow = true
set.splitright = true
set.wrap = false
set.breakindent = true
set.fileencoding = "utf-8"
set.signcolumn = "yes"

set.number = true
set.relativenumber = true
set.cursorline = true
set.wildmenu = true
set.completeopt = "menuone,noselect"

set.hidden = true
set.mouse = "a"
set.swapfile = false
set.smartindent = true

vim.g.loaded_perl_provider = 0
vim.g.indentLine_fileTypeExclude = { "dashboard", "NvimTree", "packer", "lsp-installer" },

---@diagnostic disable-next-line: redundant-value
vim.cmd(
  "colorscheme onedarker", -- duskfox | rose-pine | nightfox | nordfox
  "filetype plugin indent on"
)
