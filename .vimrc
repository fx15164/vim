call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'  
Plug 'terryma/vim-multiple-cursors'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'dracula/vim'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let mapleader = " "

set backspace=2
set clipboard=unnamed
set nobackup
set nowritebackup
set noswapfile

set noerrorbells
set vb t_vb=

set shiftwidth=4
set tabstop=4
set autoindent
set smartindent

set relativenumber
set number
set numberwidth=5

set hlsearch
set termguicolors
set background=dark
colorscheme dracula

nmap = :res +2<CR>
nmap - :res -2<CR> 
nmap ] :vertical res +2<CR>
nmap [ :vertical res -2<CR>

vmap <Tab> >gv
vmap <S-Tab> <gv

map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-t> :tabnew<CR>

map <C-b> :NERDTreeToggle<CR>
nmap F :NERDTreeFind<CR>

noremap ` :Files<CR>/
noremap ; :Buffers<CR>

nmap <Leader>v :e ~/.vimrc<CR> 	
noremap <Leader><Leader>s :so ~/.vimrc<CR>

nmap <Leader>T :below ter ++rows=12<CR> 
nmap <Leader>t :tab ter<CR> 

map <leader>h :nohl<CR>
map <C-A> ggVG

let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'cocstatus', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo', 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'cocstatus': 'coc#status'
      \ },
      \ }

nmap <Leader>f <Plug>(easymotion-overwin-f)
nmap <Leader>l <Plug>(easymotion-overwin-line)
nmap / <Plug>(easymotion-sn)

let g:closetag_filenames = '*.html,*.js,*.jsx,*.vue'
let g:closetag_emptyTags_caseSensitive = 1
let g:jsx_ext_required = 0

nmap <leader>F  <Plug>(coc-format-selected)
xmap <leader>F  <Plug>(coc-format-selected)
inoremap <silent><expr> <c-space> coc#_select_confirm()
