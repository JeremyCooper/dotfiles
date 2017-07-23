"set re=0
set ttyfast
"set lazyredraw
set swapfile
set dir=~/.tmp
execute pathogen#infect()
set hidden
let g:neocomplete#enable_at_startup = 1
let g:racer_cmd = "/home/daemoz/.cargo/bin/racer"
let g:racer_experimental_completer = 1
set nocompatible
syntax on
filetype plugin indent on
"set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set re=1
colorscheme solarized
set background=dark
set number

"what does this do?
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

nmap <Leader>f :Autoformat<CR>
"au FileType rust nmap gd <Plug>(rust-def)
"au FileType rust nmap gs <Plug>(rust-def-split)
"au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
