"https://www.youtube.com/watch?v=6-YelMGJpok
set nocompatible

syntax on
filetype off

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent
set expandtab
set autoindent
set smarttab
set termguicolors
colorscheme habamax
hi Normal guibg=NONE ctermbg=NONE
set background=dark
set path+=** 
set splitbelow
set splitright

let mapleader = " "

nnoremap <leader>cc :! gcc % -o main && ./main <cr>

"""
" set hlsearch        " Highlight searches
" set t_Co=256
" 
" 
" set wildmenu
" set wildmode=longest:full,full
" 
" 
" set wrap
" set textwidth=80	" Line wrap (number of cols)
" set linebreak	" Break lines at word (requires Wrap lines)
" 
" set smartcase	" Enable smart-case search
" set ignorecase	" Always case-insensitive
" set incsearch	" Searches for strings incrementally
" 
" set undolevels=1000	" Number of undo levels
" set backspace=indent,eol,start	" Backspace behaviour
" set showbreak=+++	" Wrap-broken line prefix
" set cursorline
" 
" set colorcolumn=80
" 
" inoremap jk <esc>
" 
" command! MakeTags !ctags -R .
" 
" let g:netrw_banner=0 " Disable netrw banner
" let g:netrw_liststyle=3 " Use tree-style view
" 
" "echo ">^.^<"
" 
" "https://learnvimscriptthehardway.stevelosh.com/chapters/13.html
