set nocompatible "disable vi mode
filetype off "required

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-sensible' "set some basic configs
"function
Plug 'vim-airline/vim-airline' "handful bar
Plug 'scrooloose/nerdtree' "file tree
Plug 'ConradIrwin/vim-bracketed-paste' "copy paste utils
Plug 'Yggdroot/indentLine' "indentation lines
Plug 'tpope/vim-fugitive' "git support
Plug 'mileszs/ack.vim' "ack inside vim
Plug 'chrisbra/csv.vim' "handle csv files
Plug 'vim-test/vim-test'

" style
Plug 'lu-ren/SerialExperimentsLain'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline-themes'

" extra lang
Plug 'sheerun/vim-polyglot'

" Coc
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yank', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-git', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'iamcco/coc-svg', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-stylelint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-rls', {'do': 'yarn-install --frozen-lockfile'}

call plug#end()

colorscheme SerialExperimentsLain

" Misc
syntax on
filetype plugin indent on
set lazyredraw
set ttyfast
set mouse=a
set hidden
set incsearch
set viminfo=
hi clear ColorColumn
hi link ColorColumn CursorLine
set number "line numbers
set relativenumber "relative to the position of the cursor
set cursorline
set expandtab "tabs instead of spaces 
set splitright "put split screen to the right 
set splitbelow "put split screen below
set conceallevel=0 "allow for easy json editing
set t_Co=256 "256 colors
set undofile
set undodir=~/.config/nvim/undo_history
" keyboard shourcuts
nnoremap <F5> :NERDTreeClose<CR>:bd<CR>
nnoremap <F2> :bp<CR>
nnoremap <F3> :bn<CR>
nnoremap <F12> :NERDTreeToggle<CR>
map <C-c> "+y<CR>
"NerdTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set ttimeoutlen=10
let g:airline_powerline_fonts=1
let g:airline_theme='dark'
let g:airline_exclude_preview = 1

"Vim-Test
let test#strategy =  'neovim'

"Hacks
au BufRead,BufNewFile *.ex,*.exs set filetype=elixir
au BufRead,BufNewFile *.eex set filetype=eelixir
