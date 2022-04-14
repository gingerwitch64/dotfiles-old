" nola's nvim config
" forked from aris's nvim config ( found at https://github.com/4tl0renz0/dotfiles/blob/main/init.vim )

" vim-plug
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
	Plug 'bluz71/vim-nightfly-guicolors' " Colorscheme
	Plug 'glepnir/dashboard-nvim' " Start screen (if ran only 'nvim')
	Plug 'nvim-lua/plenary.nvim' " telescope.nvim dependency
	Plug 'nvim-telescope/telescope.nvim' " to search for files in dashboard
	Plug 'itchyny/lightline.vim' " vim-airline replacement
	Plug 'kyazdani42/nvim-web-devicons' " for file icons
	Plug 'kyazdani42/nvim-tree.lua'
call plug#end()

" General
set number
set mouse=a

" Colorscheme
set termguicolors " note to self: if having issues, check out https://github.com/neovim/neovim/issues/6096 again.
colorscheme nightfly

let g:lightline = {'colorscheme': 'nightfly'}

" telescope.nvim
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" dashboard-nvim
let g:dashboard_default_executive = 'telescope'

nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>

let g:dashboard_custom_header = [
	\ '',
	\ '▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄',
	\ '█ ▄▄▀█▀▄▄▀█ ██ ▄▄▀█',
	\ '█ ██ █ ██ █ ██ ▀▀ █',
	\ '█▄██▄██▄▄██▄▄█▄██▄█',
	\ '▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀',
	\ '',
	\ ] 

" Nvim Tree

luado require'nvim-tree'.setup()

nnoremap <leader>ft :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
