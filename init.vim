set number
set mouse=a
set numberwidth=1
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber

set laststatus=2
set noshowmode


call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'ryanoasis/vim-devicons'
call plug#end()

set bg=dark
colorscheme gruvbox
let g:gruvbox_contrast='dark'
let mapleader = " "
let NERDTreeQuitOnOpen=1
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeToggle<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>cc :NERDComComment
nmap <Leader>fs :FZF<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
map <silent> gr <Plug>(coc-references)

" start terminal in insert mode
 au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" " open terminal on ctrl+;
 function! OpenTerminal()
   split term://cmd
     resize 10
 endfunction

nmap <c-m> :call OpenTerminal()<CR> 

     
