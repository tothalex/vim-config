" always center on movement
nnoremap j jzz
nnoremap k kzz
nnoremap <Down> jzz
nnoremap <Up> kzz
" registers
map <c-r> :reg<CR>

" buffers
map <c-b> :Buffers<CR>

" save
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

" exit in insert mode
inoremap jj <ESC>

" noh
map <silent> <C-c> :noh<CR>

" split remaps
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" split resize
map <C-d> :vertical resize -1<cr>
map <C-i> :vertical resize +1<cr>

" quit
map <silent> q :q<CR>

" save
map <silent> s :w<CR>

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

" show diagnostic
map <space>e <cmd>lua vim.diagnostic.show()<CR>

" telescope
nnoremap  <silent> ;f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> ;r <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap  <silent> ;b <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
" nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

" lazygit
nnoremap <silent> ;g  :LazyGit<CR>

" tabs
:nnoremap <C-n> :TablineBufferNext<CR>
:nnoremap <C-p> :TablineBufferPrev<CR>
:nnoremap <silent> ;x :bp<bar>sp<bar>bn<bar>bd<CR><CR>

" search for selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

