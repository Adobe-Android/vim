set nocompatible            " disable vi compatibility
syntax on                   " enable syntax highlighting
set background=dark         " dark or light; used to help inform syntax highlighting colors
set number                  " enable line numbers
"
" configure tab width and insert spaces instead of tabs
" https://stackoverflow.com/questions/1562336/tab-vs-space-preferences-in-vim
"
set expandtab               " expand tabs to spaces
set tabstop=2               " set tab width to 2 spaces
set softtabstop=2           " number of spaces the Tab character uses impacting backspace behavior.
set shiftwidth=2            " set indent to 2 spaces
set nowrap                  " disable line wrapping

set textwidth=120           " wrap lines at 120 characters
set colorcolumn=+1          " set red line at textwidth limit
set laststatus=2            " always show status-line
set showmatch               " highlight matching braces
set incsearch               " highlight while searching with / or ?
set hlsearch                " keep search matches highlighted
set lazyredraw              " don't redraw while executing macros
set scrolljump=5            " lines to scroll when cursor leaves screen
set scrolloff=3             " minimum lines to keep above and below cursor

set nobackup                " disable backups
set noswapfile              " disable swapfile
set undofile                " enable persistent undo
set undodir=~/.vim/undodir  " set undo directory location
set undolevels=1000         " maximum number of changes that can be undone
set undoreload=10000        " maximum number lines to save for undo on a buffer reload

let g:netrw_banner=0        " disable info banner
let g:netrw_liststyle=3     " use tree list view
let g:netrw_browse_split=4  " open in previous window
let g:netrw_winsize=20      " set width to 20% of the total window size
"
" opens left explore window on start
"
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Lexplore
augroup END

let mapleader = " "         " sets map leader to Space
"
" allows the use of either Ctrl+Arrow keys or Space+Vim keys for window switching
"
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <leader>l <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <leader>h <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <leader>k <c-w>k
nnoremap <silent> <C-Down> <c-w>j
nnoremap <silent> <leader>j <c-w>j
" maps the F2 key to open a vertical terminal
nnoremap <F2> :vert term
