" Plugins "
call plug#begin()
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
"  Plug 'sheerun/vim-polyglot'
  Plug 'preservim/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'neoclide/coc.nvim'
  Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
call plug#end()
" /////// "

" Set's "
syntax on

set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent
set hidden
set incsearch
set ignorecase
set smartcase
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set updatetime=100
set encoding=utf-8
set nobackup
set nowritebackup
set splitright
set splitbelow
set autoread
set mouse=a

filetype on
filetype plugin on
filetype indent on
" ///// "

" themes "
set background=dark
colorscheme gruvbox

let g:airline_theme = "gruvbox"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
" ////// "

" ToggleTerm "
lua require("toggleterm").setup()
" ////////// "

" Remaps "
nnoremap <C-a> :NERDTreeToggle<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

inoremap <C-z> <esc>:u<CR><Insert>
inoremap <A-Up> <esc>:move -2<CR><Insert>
inoremap <A-Down> <esc>:move +1<CR><Insert>
inoremap <C-x> <esc>:d<CR><Insert>

inoremap <silent><expr> <S-space> coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible()
      \? coc#pum#confirm()
      \: "<C-g>u<CR><c-r>=coc#on_enter()<CR>"

nnoremap <C-t> <ESC>:ToggleTerm size=4<CR>

nnoremap <C-P> <ESC>:vs C:\Users\octav\AppData\Local\nvim\init.vim<CR>
" ////// "

