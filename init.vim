" Plugins "
call plug#begin()
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'preservim/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'neoclide/coc.nvim'
  Plug 'akinsho/toggleterm.nvim'
call plug#end()
" /////// "

" Set's "
syntax on

" miscellaneous
set number
set hidden
set scrolloff=8
set updatetime=10
set encoding=utf-8
set autoread
set mouse=a

" Tab/space
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent

" Search
set incsearch
set ignorecase
set smartcase

" Signcolumn
set colorcolumn=80
set signcolumn=yes

" Backup
set nobackup
set nowritebackup

" Split
set splitright
set splitbelow

" filetype config
filetype on
filetype plugin on
filetype indent on
" ///// "

" themes "
set background=dark
colorscheme gruvbox
" ////// "

" Airline "
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
let g:airline_theme = "gruvbox"
" /////// "

" ToggleTerm "
lua require("toggleterm").setup()

" Remaps
nnoremap <C-t> <ESC>:ToggleTerm size=4<CR>
" ////////// "

" Coc "

" Remaps
inoremap <silent><expr> <S-space> coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible()
      \? coc#pum#confirm()
      \: "<C-g>u<CR><c-r>=coc#on_enter()<CR>"
" /// "

" NerdTree "
let NERDTreeShowHidden=1

" Remaps
nnoremap <C-a> :NERDTreeToggle<CR>
" //////// "

" Nvim Remaps "

" Split control
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move line
inoremap <A-Up> <esc>:move -2<CR><Insert>
inoremap <A-Down> <esc>:move +1<CR><Insert>

" Undo
inoremap <C-z> <esc>:u<CR><Insert>

" Delete line
inoremap <C-x> <esc>:d<CR><Insert>

" Call init.vim
nnoremap <C-P> <ESC>:vs C:\Users\octav\AppData\Local\nvim\init.vim<CR>
" /////////// "

