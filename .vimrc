set nocompatible
filetype on 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
set runtimepath+=~/.vim/bundle/YouCompleteMe
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
Plugin 'wannesm/wmgraphviz.vim'
Plugin 'artur-shaik/vim-javacomplete2'
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <C-m> <Plug>(JavaComplete-Imports-AddSmart)
nmap <C-a> <Plug>(JavaComplete-Imports-Add)
Plugin 'vim-airline/vim-airline'
 Plugin 'othree/html5.vim'
 Plugin 'SirVer/ultisnips'
 Plugin 'honza/vim-snippets'
Plugin 'vim-airline/vim-airline-themes'
map  <C-q>  <ESC>:!python -S  ~/komodo-python3-dbgp/bin/pydbgp -d localhost:9000 %
Plugin 'ctrlpvim/ctrlp.vim'
set t_Co=256
let g:airline_powerline_fonts = 1
set laststatus=2
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#enabled = 1
 let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = 'Ɇ'
  let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#tabline#buffer_nr_show = 1
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>

map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>
let g:airline#extensions#ale#enable=1
Plugin 'taglist.vim'
map <C-t> :TlistToggle<CR>
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
map <C-u>t :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags=tags
let  Tlist_Ctags_Cmd='/usr/bin/ctags'
set tags+=./tags 
let Tlist_WinWidt=25
Plugin 'The-NERD-tree'
map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinSize=25
Plugin 'indentLine.vim'
Plugin 'delimitMate.vim'
Plugin 'ycm-core/YouCompleteMe'
let g:ycm_collect_identifiers_from_tags_files = 1 
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0 
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>'] 
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1 
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1 
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0 
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" 
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR> 
let g:ycm_min_num_of_chars_for_completion=1
set autoread
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
set completeopt=preview,menu
set clipboard=unnamed
set nobackup
:set makeprg=g++\ -Wall\ \ %
set autowrite
set ruler 
set cursorline 
set magic
set guioptions-=T 
set guioptions-=m 
set foldcolumn=0
set foldmethod=indent
set foldlevel=3
set foldenable 

set nocompatible
 syntax on
set noeb
set confirm
set autoindent
set cindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set number
set history=1000
set nobackup
set noswapfile
set ignorecase
set hlsearch
set incsearch
set gdefault
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

set langmenu=zh_CN.UTF-8
set helplang=cn

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

set laststatus=2
set cmdheight=2
filetype on
filetype plugin on
filetype indent on
set viminfo+=!
set iskeyword+=_,$,@,%,#,-
set linespace=0
set wildmenu
set backspace=2
set whichwrap+=<,>,h,l
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=1
set scrolloff=3
set smartindent
au BufRead,BufNewFile * setfiletype txt
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {<CR>}<ESC>O
":inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " "<ESC>i
:inoremap ' '<ESC>i
function! ClosePair(char)
if getline('.')[col('.') - 1] == a:char
return "\<Right>"
else
return a:char
endif
endfunction
filetype plugin indent on
set completeopt=longest,menu
call vundle#end()
syntax enable
map <C-e> <ESC>:wq
colorscheme  molokai
set tags=./tags
