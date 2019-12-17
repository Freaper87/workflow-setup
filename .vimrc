set nocompatible              " be iMproved, required
filetype off                  " required
filetype indent on
set smartindent
set shiftwidth=2
set tabstop=2
set number
set autoindent

call plug#begin('~/.vim/plugged')
highlight trailingWhitespace ctermbg=gray guibg=gray
match trailingWhitespace /\s\+$/

" Initialize plugin system
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'posva/vim-vue'
Plug 'kaicataldo/material.vim'

call plug#end()
execute pathogen#infect()
call pathogen#helptags()
colorscheme material

let g:user_emmet_leader_key=','
" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif
set background=dark

" navigation in insert mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>
