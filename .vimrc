" General
set shell=/bin/bash
set nocompatible
set visualbell " Flashes instead of 'beeping'
set laststatus=2 " always display status
set backspace=indent,eol,start
set ruler
set history=1000
set paste

" Search behavior: (see below for the shortcut to toggle the hlsearch)
set nohlsearch
set incsearch

" Doing it in this order means that:
" * if the pattern is all lowercase, the search will be case-sensitive
" * if there's at lease an uppercase in the pattern, the search will be
"   case-sensitive
set ignorecase
set smartcase

set iskeyword+=@
set scrolloff=5
set showmatch
set hidden  " Hides buffers instead of closing them
"set number " Shows line numbers

" Folding
set foldenable
set foldmethod=syntax
set foldlevelstart=99

" Indentation
set autoindent
set cindent
set cinoptions+=(s,m1
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set shiftround

set mouse=a

set formatoptions-=ro

syntax on
filetype on
filetype plugin indent on
filetype plugin on

au! BufRead,BufNewFile *.hi set filetype=cpp

" Mappings
" map is recursive
" noremap is not
" n, v, ... prefixes are for normal mode, visual mode,...
let mapleader=','
cnoremap %% <C-R>=fnameescape(expand('%:p:h')).'/'<CR>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
nnoremap Q :
" F12 toggles the TagList
nnoremap <silent> <F12> :TlistToggle<CR>
" C-H toggles the hlsearch
let hlstate=0
nnoremap <silent> <c-h> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<CR>

" Adding commands for some functions from duponr_utils
" command -nargs=1 SS call Glimpse( '<args>' )
" command -nargs=0 CvsLog call CvsLog()

" Taglist
let Tlist_WinWidth=60

" Switching text wrapping off
set tw=0

" Statusline:
" f is the relatie path to the file
" m is the modified flag ([+])
" n is the buffer number
" l is the line number
" L is the number of lines in the buffer
" c is the column number
" p is the percentage
set statusline=\ \ %f\ [%n%M%R]%=L%l:C%c\ %p%%/%L\ 

set t_Co=256
colorscheme duponr

"AUTO_GEN_START
set tag+=/Users/regisdupont/.vimtags_genpde
"AUTO_GEN_END
