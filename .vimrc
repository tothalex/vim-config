call plug#begin()
Plug 'preservim/NERDTree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'sheerun/vim-polyglot'
Plug 'kien/ctrlp.vim'
Plug 'neoclide/coc.nvim'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

set encoding=UTF-8
set relativenumber

autocmd vimenter * NERDTree
syntax enable
set background=dark
colorscheme solarized

let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab

let g:NERDTreeIgnore = ['^node_modules$']

colorscheme gruvbox

let g:airline_powerline_fonts = 1

let g:fzf_preview_window = 'right:60%'
map <c-o> :GFiles --exclude-standard --others --cached<CR>
map <c-e> :NERDTreeToggle<CR>
nnoremap j jzz
nnoremap k kzz
nnoremap <Down> jzz
nnoremap <Up> kzz
map <c-s> :update<CR>
