
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


if v:progname =~? "evim"
  finish
endif


set nocompatible

set scrolloff=5
set backspace=indent,eol,start
if has("vms")
  set nobackup		
else
    set backup		
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
  
vmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>p :r! cat /tmp/vitmp<CR>
set autochdir
syntax enable
syntax on
set nu
    
set selection=exclusive
set selectmode=mouse,key
set cindent
set autoindent
set smartindent
set shiftwidth=4



set writebackup
set nobackup

set showmatch
set matchtime=5
set ruler
set showcmd

set foldmethod=syntax
set foldlevel=100
set laststatus=2
set cmdheight=2
set list
set listchars=tab:>-,trail:-


filetype on
filetype plugin on
filetype indent on
filetype plugin indent on 


set fileencodings=utf-8,gb2312,gbk,gb18030
set fileencoding=utf-8
set encoding=utf-8
set fileformat=unix


set hlsearch
set incsearch

set t_Co=256

colorscheme ron
set guifont=Monaco:h10

map Q gq
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 80 characters.
  autocmd FileType text setlocal textwidth=80

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" 增加鼠标行高亮
set cursorline
" hi CursorLine  cterm=NONE   ctermbg=white ctermfg=red

" 设置tab是四个空格
set ts=4
set expandtab

" 主要给Tlist使用
let Tlist_Exit_OnlyWindow = 1
let Tlist_Auto_Open = 1

" map key start here
map S :w<CR>
set showcmd
set wildmenu
nnoremap <LEADER><CR> :nohlsearch<CR>
"分屏操作
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>
map <LEADER>l <C-w>l
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER><up> :res +5<CR>
map <LEADER><down> :res -5<CR>
map <LEADER><left> :vertical resize-5<CR>
map <LEADER><right> :vertical resize+5<CR>
map <LEADER>[ <C-w>t<C-w>K
map <LEADER>] <C-w>t<C-w>H

"切换tab 配合vim-airline使用

map tn :tabnew<CR>
map <Tab> :bn<CR>
map <S-Tab> :bp<CR>
