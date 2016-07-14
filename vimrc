"normal
set nocp
set ru
set hls
set is
syntax on
set backspace=indent,eol,start
set encoding=utf-8 
set langmenu=zh_CN.UTF-8 
set whichwrap=b,s,

"language message zh_CN.UTF-8 
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 
set ambiwidth=double
filetype plugin indent on 

let &termencoding=&encoding
set fileencodings=utf-8,gbk


"edit
"set nu
set ts=4
set sw=4
set et 
set smarttab 
"set spell 
set shiftwidth=4
set tw=80
set lbr
set fo+=mB

"set mouse=a
set mouse=v

set tw=100
set lbr 
set fo+=mB


"c c++
set sm
set cin 
set cino=:0g0t0(sus 
set ai 


"else
set selectmode=
set keymodel= 
set selection=inclusive
set wildmenu
colo torte

let g:DoxygenToolkit_authorName="airy"
let g:DoxygenToolkit_briefTag_funcName="yes"

set nocp
filetype plugin on

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>  



