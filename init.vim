set mouse=a 
set number
set encoding=UTF-8
set expandtab  
set tabstop=2  
set shiftwidth=2  
set autoindent  
set smartindent  
set cursorline

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
  " Theme
  Plug 'joshdick/onedark.vim'

  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'leafgarland/typescript-vim'

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Tree folder
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  
  " Search files
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Autocomplete code 
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'

  " Terminal
  Plug 'voldikss/vim-floaterm'

  " Git 
  Plug 'tpope/vim-fugitive' 
call plug#end()

" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor

syntax on
colorscheme onedark
