" If automatic detection was a failure, type ":e ++enc=cp936" to force reloading.


set fileencodings=ucs-bom,utf-8,euc-cn,cp936,gb18030
set encoding=utf-8

if has("win32")
    set guifont=Consolas:h11:cANSI
    set guifontwide=NSimSun:h12
endif

au Filetype make set noexpandtab

set nocompatible
set autowrite
set autoread
set nobackup

set autoindent
set smartindent
set cindent
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab

set textwidth=80
set wrapmargin=80
set list
set listchars=tab:>-,trail:-
set showcmd
set ruler
set cmdheight=2
set laststatus=2
set hlsearch
set number
set background=dark
set backspace=2
set whichwrap+=<,>,h,l
"set mouse=a
set novisualbell
set noerrorbells

syntax enable
syntax on

colorscheme desert

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Sort_Type='name'

let g:bufExplorerDefaultHelp=0
let g:bufExplorerDetailedHelp=0
let g:bufExplorerMinHeight=15
let g:bufExplorerMaxHeight=30

let g:explHideFiles='.*\.\(o\|deps\)'
let g:winManagerWindowLayout='BufExplorer,FileExplorer|TagList'
let g:persistentBehaviour=0
map <c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-b> :BottomExplorerWindow<cr>
nmap wm :WMToggle<cr>

nnoremap <silent> <F12> :A<CR>

nnoremap <silent> <F3> :Grep<CR> 
let Grep_Default_Filelist = '*.c *.cpp *.h' 

"if v:version < 701
""au BufRead,BufNewFile * syntax match Search /\%<101v.\%>90v/
"au BufRead,BufNewFile * syntax match ErrorMsg /\%>100v.\+/

au BufWinEnter * let w:m1=matchadd('Search', '\%<101v.\%>80v', -1)
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
au BufWinLeave * call clearmatches()

map <F11> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set tags+=~/.vim/tag/cpp
set tags+=~/.vim/tag/google


let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
filetype plugin indent on
set completeopt=menuone,menu,longest,preview
