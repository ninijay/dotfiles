set encoding=utf-8
syntax on
set number relativenumber
set linebreak
set textwidth=256
set showmatch
set visualbell

set hlsearch
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

set ruler
set undolevels=1024
set backspace=indent,eol,start

" Plugin Manager
execute pathogen#infect()

" Autocompletion
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

" ArduINO for nodeMCU
command Buildmcu make -f makeEspArduino.mk BOARD=nodemcu flash
autocmd FileType arduino nnoremap <buffer> <F5> :Buildmcu
