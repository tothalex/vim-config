" import plugings, maps
runtime ./plug.vim
runtime ./map.vim

" general
set encoding=UTF-8
set number relativenumber
syntax enable
set background=dark
colorscheme nightfox
set termguicolors
set cursorline
set title
set autoindent
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab

set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
"set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=2
" Ignore case when searching
set ignorecase
" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines

" tab settings
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab

" file types
au BufNewFile,BufRead *.es6 setf javascript
au BufNewFile,BufRead *.tsx setf typescriptreact
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
au BufNewFile,BufRead *.flow set filetype=javascript
set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd BufWritePre *.go lua vim.lsp.buf.formatting()

" copy to clipboard
set clipboard=unnamed

" lazygit config
runtime ./after/plugin/lazygit.rc.vim

" completion
set completeopt=menuone,noinsert,noselect

" prettier
" let g:prettier#quickfix_enabled = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.html PrettierAsync

" rust format
autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 200)

set updatetime=300
" Show diagnostic popup on cursor hold
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })

" git blame
let g:blamer_enabled = 1
let g:blamer_show_in_insert_modes = 0
let g:blamer_prefix = '  '

" terraform
autocmd BufWritePre *.tf lua vim.lsp.buf.formatting_sync()

