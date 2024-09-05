set nocompatible
set mouse-=a
filetype indent on
set number relativenumber
set smarttab
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set autochdir
set splitright
set splitbelow
set showcmd
filetype on
filetype plugin indent on
packadd YouCompleteMe

" Specify a directory for plugins
call plug#begin()
"Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter' "Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
"Plug 'ntk148v/komau.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'ryanoasis/vim-devicons'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'projekt0n/github-nvim-theme', { 'tag': 'v0.0.7' }
Plug 'lervag/vimtex'
Plug 'vimsence/vimsence'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'github/copilot.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'yuttie/comfortable-motion.vim'
Plug 'mhinz/vim-startify'
Plug 'tmsvg/pear-tree'
" Initialize plugin system
call plug#end()

set hlsearch
set bg=dark
set background=dark
set hlsearch
set guifont=DejaVu\ Sans:s12

let g:UltiSnipsExpandTrigger="<Bslash>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:pear_tree_repeatable_expand = 0
let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1

colorscheme gruvbox 
let g:NERDTreeGitStatusWithFlags = 1
let g:airline_theme='gruvbox'
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:NERDTreeIgnore = ['^node_modules$']
let g:vimtex_view_general_viewer = 'zathura'
let g:vimsence_client_id = '439476230543245312'
let g:vimsence_small_text = 'Vim'
let g:vimsence_small_image = 'vim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'
let g:vimsence_file_explorer_text = 'In NERDTree'
let g:vimsence_file_explorer_details = 'Looking for files'
"let g:vimsence_custom_icons = {'filetype': 'iconname'}
let g:vimtex_compiler_method = 'latexmk'
let g:ycm_key_invoke_completion = '<C-j>'
let g:vimtex_view_zathura_options = '-reuse-instance'



nnoremap cpp :!g++-13 % -o %:r && ./%:r<CR>
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-s> :Startify<CR>

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

let g:startify_bookmarks = [
    \ { 'v': '~/.vimrc' },
    \ { 'z': '~/.zshrc' },
    \ { 'C': '~/Library/CloudStorage/Dropbox/Programming/COMP1405/'},
    \ { 'c': '~/Library/CloudStorage/Dropbox/Programming/CP/'},
    \ {'p' : '~/Library/CloudStorage/OneDrive-CarletonUniversity/Discrete Structures/Problem Sets/'},
    \ ]

let g:startify_lists = [
            \ { 'header': ['    Bookmarks'], 'type': 'bookmarks' },
            \ { 'header': ['    MRU'], 'type': 'files' },
            \ { 'header': ['    MRU'. getcwd()], 'type': 'dir' },
            \ { 'header': ['    Sessions'], 'type': 'sessions' },
            \ { 'header': ['    Commands'], 'type': 'commands' },
            \ ]


autocm VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   wincmd o
            "\ |   NERDTree
            "\ |   wincmd w
            \ | endif
