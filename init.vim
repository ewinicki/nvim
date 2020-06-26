call plug#begin()
Plug 'VundleVim/Vundle.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
call plug#end()

filetype on
filetype plugin on
filetype indent on

set autoread

"tabcomplete menu
set wildmode=longest,list,full
set wildmenu

"fix backspace key
set backspace=eol,start,indent

"more space for displaying long messages
set cmdheight=2

"highlight search results
set hlsearch

"show matching braces
set showmatch
"blink rate for matching braces
set mat=2

"disable bell
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"Navigate windows quick
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

" enter insert mode in term
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" Set line numbers
set nu

"show line number and column on bottom
set ruler

"ignorecase in search
set ignorecase

"use case in search if you use anything but all lowercase
set smartcase

syntax enable

" Set status line
set laststatus=2

set statusline =%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*           "file format
set statusline +=%3*%y%*               "file type
set statusline +=%4*\ %<%f%*           "relative path
set statusline +=%2*%r%*               "read only
set statusline +=%2*%m%*               "modified flag
set statusline +=%1*%=%5l%*            "current line
set statusline +=%2*/%L%*              "total lines
set statusline +=%1*%4v\ %*            "virtual column number
set statusline +=%2*0x%04B\ %*         "character under cursor

" Tab settings
set expandtab
set smarttab
set shiftwidth=3
set tabstop=3

" Autoindent
set si
set cindent

" more natural splits
set splitbelow
set splitright

"min height for split windows
set winheight=30
silent! set winminheight=5

" Color Schemes
"colorscheme jellybeans
set termguicolors
set background=dark
colorscheme gruvbox

" Alt - ] open definition in vertical split
map <A-]> :vsp <CR>:exec("tag ".expand("cword>"))<CR>
set tags=.tags,tags;

" Update after curor idles
:au CursorHold * checktime

" Add cursor line
set cursorline
set cursorcolumn
execute "set colorcolumn=" . join(range(81,335), ',')

set guifont=Monospace\ 8

" Turn of wrapping
set nowrap

"don't make any crazy backups, just save often dummy
set nobackup
set nowb
set noswapfile

" Buffer screen changes
set lazyredraw
