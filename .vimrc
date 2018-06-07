set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim

set number
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set cmdheight=2
set notimeout ttimeout ttimeoutlen=200
set shiftwidth=4
set softtabstop=4
set expandtab

call vundle#begin()
Plugin 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'tell-k/vim-autopep8'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'Badacadabra/vim-archery'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'lervag/vimtex'
Plugin 'mxw/vim-jsxi'
call vundle#end()

colorscheme archery

command! Rld source ~/.vimrc

let g:autopep8_max_line_length=120
let g:auto_save=0
let g:ycm_server_python_interpreter='/usr/bin/python2'
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>:q<CR>
map <C-n> :NERDTreeToggle<CR>

filetype plugin indent on
