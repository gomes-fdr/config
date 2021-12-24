" Don't put anything in your .vimrc you don't understand

" Load plugins here 
call plug#begin()
Plug 'matze/vim-move'
Plug 'Raimondi/delimitMate'
Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'junegunn/goyo.vim'
call plug#end()

let g:move_key_modifier = 'C' " change to CRTL + [j | k] to move line

syntax enable               " enable syntax processing
filetype indent on          " load filetype-specific indent files
set tabstop=4               " number of visual spaces per TAB
set softtabstop=4           " number of spaces in tab when editing
set expandtab               " tabs are spaces
set number                  " show line numbers
set showcmd                 " show command in bottom bar
set cursorline              " highlight current line
set wildmenu                " visual autocomplete for command menu
set lazyredraw              " redraw only when we need to.
set showmatch               " highlight matching [{()}]
set incsearch               " search as characters are entered
set hlsearch                " highlight matches
set foldenable              " enable folding
set foldlevelstart=10       " open most folds by default
set foldnestmax=10          " 10 nested fold max
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
set mouse=a
set wrap linebreak nolist

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

let mapleader=","       " leader is comma
noremap <leader>/ :Commentary<cr>

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|*.pyc'

" indent/unindent with tab/shift-tab
nmap <Tab> >>
nmap <S-tab> <<
imap <S-Tab> <Esc><<i
vmap <Tab> >gv
vmap <S-Tab> <gv



