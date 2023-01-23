:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin('~/.local/share/nvim/plugged')

Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'simrat39/rust-tools.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'Pocco81/auto-save.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

syntax enable
filetype plugin indent on

nmap <F1> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>


luafile ~/.config/nvim/lua/compe-config.lua
luafile ~/.config/nvim/lua/rust-ls.lua
luafile ~/.config/nvim/lua/toggleterm-config.lua
luafile ~/.config/nvim/lua/autosave-config.lua
luafile ~/.config/nvim/lua/gitsigns-config.lua
luafile ~/.config/nvim/lua/lualine-config.lua
