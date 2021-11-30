set number
set expandtab                                      " expand tabs to spaces
set tabstop=2                                      " set tab width to 2 spaces
set softtabstop=2                                  " number of spaces the Tab character uses impacting backspace behavior.
set shiftwidth=2                                   " set indent to 2 spaces
set nowrap                                         " disable line wrapping

set textwidth=120                                  " wrap lines at 120 characters
set colorcolumn=+1                                 " set red line at textwidth limit
set showmatch                                      " highlight matching braces
set lazyredraw                                     " don't redraw while executing macros
set scrolljump=5                                   " lines to scroll when cursor leaves screen
set scrolloff=3                                    " minimum lines to keep above and below cursor

set nobackup                                       " disable backups
set noswapfile                                     " disable swapfile
set undofile                                       " enable persistent undo
set undodir=C:\Users\tngam\AppData\Local\nvim\undo " set undo directory location
set undolevels=1000                                " maximum number of changes that can be undone
set undoreload=10000                               " maximum number lines to save for undo on a buffer reload
:set guifont=Consolas:h14                          " set GUI font size and font family

" Open netrw on startup with specific settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore .
augroup END

" set
let g:toggleterm_terminal_mapping = '<C-t>'
" or manually...
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

" sets map leader to Space
let mapleader = " "
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
" custom mapping to exit terminal
tnoremap <ESC> <C-\><C-n>:q!<CR>

" Fix key mapping issues for GUI
" Press Shift + Insert keys for paste from clipboard
inoremap <silent> <S-Insert> <C-R>+

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('C:\Users\tngam\AppData\Local\nvim-data\site\autoload')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'

Plug 'arcticicestudio/nord-vim'

Plug 'akinsho/toggleterm.nvim'

" Initialize plugin system
call plug#end()

colorscheme nord
