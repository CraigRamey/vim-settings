call pathogen#infect()
:Helptags
call plug#begin('~/.config/nvim/init.vim')
Plug 'sbdchd/neoformat'
call plug#end()
filetype plugin indent on
syntax on
colorscheme distinguished 
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:jsx_ext_required = 0

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
autocmd VimEnter * wincmd p
autocmd FileType javascript set formatprg=prettier\ --stdin
autocmd BufWritePre *.js,*.jsx :normal gggqG
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" \r will now refresh nerd tree and ctrl p cache
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>:CtrlPClearCache<cr>
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
set incsearch
set wildignore=*.o,*.obj,*.bak,*.exe
set wrap
set linebreak
set nolist
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set ignorecase
set smartcase
" Security
set modelines=0
" Show line numbers
set number
set relativenumber
set statusline=%f         " Path to the file
set statusline+=%=        " Switch to the right side
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" " Show file stats
set ruler
" Search down into folders with the find command
set path+=**
" Shows tab auto complete options
set wildmenu
set wildignore+=/.git/*,*/node_modules/*
" move selected lines up one line
xnoremap <C-n>  :m-2<CR>gv=gv

" move selected lines down one line
xnoremap <C-m> :m'>+<CR>gv=gv
