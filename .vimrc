" --- Disable swap, backups, undo files (clean workspace) ---
set noswapfile
set nobackup
set nowritebackup
set noundofile

" --- Editor behavior ---
set autoindent
set smartindent
set expandtab               " Convert tab to spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noswapfile
set ignorecase
set smartcase               " Case-sensitive if uppercase used
set incsearch
set hlsearch
set wrap                    " Soft wrap lines
set termguicolors           " Better color support
set scrolloff=8              " Keep cursor centered while scrolling
set sidescrolloff=8

" --- Clipboard ---
set clipboard=unnamedplus   " System clipboard support (copy/paste)

" --- Faster response ---
set updatetime=300
set timeoutlen=400
set ttimeoutlen=10


" --- Split behavior ---
set splitright
set splitbelow

" --- Matching pairs (your mappings + safer auto brackets) ---
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {;<CR> {<CR>};<Esc>O
inoremap jk <Esc>

" --- Normal mode shortcuts ---
nnoremap <Space>w :w<CR>
nnoremap <Space>q :wq<CR>
nnoremap <Space>Q :q!<CR>
nnoremap <Space>e :Ex<CR>      " File explorer
nnoremap <Space>f :find<Space>  " Quick find file
nnoremap <Space>/ :noh<CR>     " Clear search highlight
nnoremap Y y$<CR>              " Yank till end of line
nnoremap <C-a> ggVG<CR>        " Select all
nnoremap <C-c> "+y<CR>         " Copy selected to clipboard
vnoremap <C-v> "+p<CR>         " Paste from clipboard

" --- Performance ---
set lazyredraw
set ttyfast

" --- Auto-complete suggestions ---
set completeopt=menuone,noinsert,noselect

" --- Filetype support ---
filetype plugin indent on

" --- Persistent undo (optional, but useful) ---
" Uncomment if you want undo history
" set undodir=~/.vim/undo
" set undofile

" --- Better status line ---
set statusline=%f\ %y\ %m\ %=Line:%l/%L\ Col:%c

" --- Optional: Auto reload file if changed outside ---
set autoread
au FocusGained * checktime

" --- Optional: Remove trailing spaces on save ---
autocmd BufWritePre * %s/\s\+$//e

" --- Optional: Highlight TODO, FIXME ---
autocmd Syntax * syntax keyword Note TODO FIXME NOTE
highlight link Note Todo


" --- Tabs ---
nnoremap nm :tabnew<CR>        " Open NEW tab
nnoremap <Tab> :tabnext<CR>    " Next tab
nnoremap <S-Tab> :tabprev<CR>  " Previous tab

" --- Fold settings ---
set foldmethod=indent           " Fold based on indentation
set foldlevel=99                " Don't fold by default
nnoremap <Space>z za            " Toggle fold under cursor

" --- Tab navigation using n + Tab ---
nnoremap n:tabnext<CR>   " n + Tab → next tab
nnoremap N<Tab> :tabprev<CR>   " Shift+n + Tab → previous tab


