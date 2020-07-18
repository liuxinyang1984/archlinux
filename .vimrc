"set nocompatible                "去除VI一至性
syntax on                   	" 自动语法高亮
colorscheme solarized        	" 设定配色方案
"set background=dark		" 设定配色主题
set number                  	" 显示行号
set cursorline   	        " 突出显示当前行
set tabstop=4			"设置一个TAB为4个空格
set shiftwidth=4
set expandtab
set wildmenu
let mapleader="\<space>"    "设置Leader为空格
"hi Normal ctermfg=256 ctermbg=28 
"nmap <F5> :!google-chrome-stable app=file:///%:p<CR>
nmap <F5> :!google-chrome-stable --app="file:///%:p"<CR>
imap	<c-h>	<left>
imap	<c-j>	<down>
imap	<c-k>	<up>
imap	<c-l>	<right>
"切换Tab标签
nmap    tn   :tabe<CR>
nmap	th	:tabp<CR>
nmap	tl	:tabn<CR>
"Shift跨行移动
nmap	J	5j
nmap	K	5k
"插入模式下删除行
imap    <c-d>   <ESC>ddi
"储存和退出
map     <c-q>   :q<CR>
imap    <c-q>   <ESC>:q<CR>
map     <c-s>   :w<CR>
imap    <c-s>   <ESC>:w<CR>
"map     <c-r>   :source ~/.vimrc<CR>
imap    <c-r>   <ESC>:source ~/.vimrc<CR>
"分屏
map s       :none
map sl      :set splitright<CR>:vsplit<CR>
map sh      :set nosplitright<CR>:vsplit<CR>
map sk      :set nosplitbelow<CR>:split<CR>
map sj      :set nosplitbelow<CR>:split<CR>

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'iamcco/markdown-preview.vim'
Plug 'joker1007/vim-markdown-quote-syntax'
"语法检测
Plug 'scrooloose/syntastic'
"彩虹括号
"Plug 'kien/rainbow_parentheses.vim'
"代码补全
Plug 'shougo/neocomplcache'
"模糊搜索
Plug 'kien/ctrlp.vim'
"emmet
Plug 'mattn/emmet-vim'
call plug#end()

"MarkDown Preview 配置
let g:mkdp_path_to_chrome="google-chrome-stable --new-window"
let g:mkdp_auto_close=0
let g:mkdt_auto_astar=1
nmap <F7> <Plug>MarkdownPreview
nmap <F8> <Plug>StopMarkdownPreview

"NerdTree 快捷键配置
nmap tt :NERDTreeToggle<CR>
let     NERDTreeHighlightCursorline = 1 "高亮当前行
let     NERDTreeShowLineNumbers     = 1 "显示行号
"Vim-AirLine 配置
let laststatus = 2
let g:aireline_powerline_fonts =1
let g:airline_theme = 'base16'
"NeoComplCache配置
let g:neocomplcache_enable_at_startup = 1 "默认启动
let g:neocomplcache_enable_auto_select =1 "自动选择默认
"emmet-vim配置
"let g:user_emmet_leader_key = '<c-,>'
let g:user_emmet_expandabbr_key = '<TAB><TAB>'
