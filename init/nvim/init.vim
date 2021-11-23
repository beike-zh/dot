" 基础

" color-theme
if !has('gui_running')
  set t_Co=256
endif

" 我懒得修改 runtimepath
" 偷个懒, 在 end plug 之后添加
" light-version
" colorscheme PaperColor
" set background=light
" dark-version
" set background=dark
" colorscheme PaperColor
set nu
set rnu
set ruler
set laststatus=2
set noshowmode
set autoindent
set showmatch
set visualbell
set matchtime=2
set display=lastline
set formatoptions+=m
set formatoptions+=B
if has('syntax')
	syntax enable
	syntax on
endif

if has('autocmd')
	filetype plugin indent on
endif


" 快捷键
let mapleader="\<space>"
let maplocalleader="\<space>"
imap jk <Esc>

nmap fw :w<CR>
nmap fq :q<CR>
nmap lh  ^
nmap le  $

" 打开最后编辑位置
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\	 exe "normal! g`\"" |
	\ endif



" 插件
source ~/dotfiles/init/nvim/site/autoload/plug.vim
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'edwinb/idris2-vim'
Plug 'Shougo/deol.nvim'
Plug 'skywind3000/vim-terminal-help'
Plug 'NLKNguyen/papercolor-theme'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'jiangmiao/auto-pairs'
Plug 'jez/vim-better-sml'

call plug#end()

" complete
let g:deoplete#enable_at_startup = 1
" let g:neopairs#enable = 1
" tab 
inoremap <silent><expr> <TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
set shortmess+=c
" optionally 
call deoplete#custom#option({
\ 'auto_complete_delay': 200,
\ 'smart_case': v:true,
\ 'camel_case': v:true,
\ })

" auto-pairs
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'


" lightline
let g:lightline = { 'colorscheme': 'ayu_light' }
" let g:lightline = { 'colorscheme': 'one' }

" light-version
colorscheme PaperColor
set background=light



" idris2
let g:idris_indent_if = 3
let g:idris_indent_case = 5
let g:idris_indent_let = 4
let g:idris_indent_where = 6
let g:idris_indent_do = 3
let g:idris_indent_rewrite = 8
