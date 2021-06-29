call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-eslint', 'coc-tsserver', 'coc-vetur', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-rls']
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'preservim/NERDTree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chemzqm/vim-jsx-improve'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'unkiwii/vim-nerdtree-sync'
Plug 'pantharshit00/vim-prisma'
Plug 'ap/vim-css-color'
Plug 'wincent/terminus'

call plug#end()

" general
set encoding=UTF-8
set number relativenumber
syntax enable
set background=dark
colorscheme gruvbox

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

" coc settings
inoremap <silent><expr> <c-space> coc#refresh()

" tab settings
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab

" always center on movement
nnoremap j jzz
nnoremap k kzz
nnoremap <Down> jzz
nnoremap <Up> kzz

" nerdtree settings
autocmd vimenter * NERDTree
" let g:NERDTreeIgnore = ['^node_modules$']
map <c-e> :NERDTreeToggle<CR>
let g:NERDTreeHighlightCursorline = 1
let g:nerdtree_sync_cursorline = 1

" fzf settings
map <c-o> :GFiles --exclude-standard --others --cached<CR>
map <c-f> :Rg! 
map <c-g> :BCommits<CR>
let g:fzf_layout = { 'window': { 'width': 1, 'height': 1 } }
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --theme=gruvbox --color=always --style=header,grid --line-range :300 {}'"

" file navigation
map <c-p> :bprev<CR>call s:updateNerdTreeDir()<CR>
map <c-n> :bnext<CR>call s:updateNerdTreeDir()<CR>

" registers
map <c-r> :reg<CR>

" buffers
map <c-b> :Buffers<CR>

" split remaps
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-q> <C-W>q

" split resize
map <C-d> :vertical resize -1<cr>
map <C-i> :vertical resize +1<cr>

" terminal
map <c-t> :term<CR>
:tnoremap <C-h> <C-\><C-N><C-w>h
:tnoremap <C-j> <C-\><C-N><C-w>j
:tnoremap <C-k> <C-\><C-N><C-w>k
:tnoremap <C-l> <C-\><C-N><C-w>l
:inoremap <C-h> <C-\><C-N><C-w>h
:inoremap <C-j> <C-\><C-N><C-w>j
:inoremap <C-k> <C-\><C-N><C-w>k
:inoremap <C-l> <C-\><C-N><C-w>l
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

