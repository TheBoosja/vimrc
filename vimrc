" ########################################### "
" ####### Master Boosja's vimrc file  ####### "
" ##### http://www.github.com/TheBoosja ##### "
" ########################################### "


" ================== "
" ==== PLUGINS ===== "
" ================== "

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$HOME/vimfiles/bundle/')

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'

" Color Schemes
Plugin 'chriskempson/base16-vim'
Plugin 'vim-scripts/Wombat'

call vundle#end()
filetype plugin indent on

set laststatus=2
set noshowmode

let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ 'active': {
	\	'left': [ [ 'mode', 'paste' ],
	\			  [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\	'gitbranch': 'fugitive#head'
	\ },
	\ }



" ================== "
" ==== SETTINGS ==== "
" ================== "

syntax enable
colorscheme wombat

if has('gui_running')
	set guioptions-=T  " no toolbar
	set guifont=Courier_New:h9:cANSI:qDRAFT
	set lines=50 columns=108 linespace=0
endif

set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set autoread
set ruler
set tabstop=4 		" tab
set shiftwidth=4 	" indent
set smartindent
set wildmenu

autocmd VimResized * wincmd =


" ================== "
" ==== MAPPINGS ==== "
" ================== "

" Remap <leader>
let mapleader = "\<Space>"

nnoremap <leader>rv :source $MYVIMRC<CR>
nnoremap <leader>av :tabnew $MYVIMRC<CR>

nnoremap <leader>w :w<CR>
nnoremap <leader>q :wq<CR>

nnoremap <leader>n :tabnew
nnoremap <leader>x :tabclose<CR>
nnoremap <leader>h :tabfirst<CR>
nnoremap <leader>j :tabnext<CR>
nnoremap <leader>k :tabprev<CR>
nnoremap <leader>l :tablast<CR>


