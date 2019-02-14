set nocp

filetype plugin indent on " load filetype-specific indent files 

syntax enable " keep my current color settings

call pathogen#infect() " use pathogen  

colorscheme codedark " colorscheme to make the editor readable

let g:airline_theme = 'codedark' " set color theme for airline

set tabstop=4 " number of visual spaces per TAB

set softtabstop=4 " number of spaces in tab when editing 

set expandtab " tabs are spaces

set number " show line numbers

set showcmd  " show command in bottom bar

set wildmenu " visual autocomplete for command menu

" set lazyredraw  " redraw only when need to. something that i don't know yet

set showmatch " highlight matching [{()}] 

set incsearch " search as characters are entered 

set hlsearch " highlight matches 

"turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set foldenable " enable folding

set foldlevelstart=10 " open most folds by default

set foldnestmax=10 " 10 nested fold max

" space open/closes folds
nnoremap <space> za

" highlight last inserted text 
nnoremap gV `[v`]

" --------------- leader is coma ------------
let mapleader="," " leader is coma

" toggle gundo
nnoremap <leader>u :UndotreeToggle<CR>

" allow cursor change in tmux mode 
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
