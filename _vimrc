syntax on
au GUIEnter * simalt ~x
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>

"TODO: jshint
"TODO:按指定字符对齐

"set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin
set paste
"设置工作目录为当前编辑文件的目录
set bsdir=buffer
set autochdir

"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"语言设置
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
"set guifont=NSimSun:h10

"set guifont=Monaco:h9
"set guifont=Courier_New:h14:cANSI
"set gfw=YaHei\ Consolas\ Hybrid:h9
set guifont=Courier\ New:h14
"set guifont=Consolas:h12
"set guifont=YaHei\ Consolas\ Hybrid:h12
"set guifont=Yahei\ Mono:h12

"set helplang=cn
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim

"禁止生成临时文件
set nobackup

"搜索忽略大小写
set ignorecase 

"搜索逐字符高亮
set incsearch

"行内替换
set gdefault

"始终显示行号
set nu!

"显示光标的坐标
set ruler

"高亮整行
"set cursorline


"自动缩进
set noautoindent
set cindent
set smartindent

"Tab键的宽度
set shiftwidth=4
set tabstop=4


"Tab键插入四个空格,仅PHP
autocmd FileType php set shiftwidth=4 tabstop=4 expandtab softtabstop=4

"与Windows共享剪贴板
"set clipboard+=unnamed


"编辑vimrc之后，重新加载
autocmd! bufwritepost _vimrc source $VIM/_vimrc

"配色方案
" colorscheme molokai 

"自定义关联文件类型
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.phtml set filetype=php
au BufRead,BufNewFile *.js set ft=javascript.jquery

"--------插件设置

"---NeoComplCache 启动并使用Tab触发
let g:neocomplcache_enable_at_startup = 1 

"tab切换
:nn <M-1> 1gt
:nn <M-2> 2gt
:nn <M-3> 3gt
:nn <M-4> 4gt
:nn <M-5> 5gt
:nn <M-6> 6gt
:nn <M-7> 7gt
:nn <M-8> 8gt
:nn <M-9> 9gt
:nn <M-0> :tablast<CR>

:noremap ,b :!cd "%:p:h";bash<cr>

"作者插件
let g:vimrc_author='panwf'
let g:vimrc_email='panwf@mail.open.com.cn'
let g:vimrc_copyright='Copyright (c) 2013 Open Inc.'

nmap <F4> :AuthorInfoDetect<cr>
"注释插件
let mapleader=","
",ca,在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
",cc，注释当前行
",c，切换注释/非注释状态
",cs，以”性感”的方式注释
",cA，在当前行尾添加注释符，并进入Insert模式
",cu，取消注释
"Normal模式下，几乎所有命令前面都可以指定行数
"Visual模式下执行命令，会对选中的特定区块进行注释/反注释
"""""""""""""""""""""""""""""""""""""""""""""
"##########vundle插件管理器开始##########
"""""""""""""""""""""""""""""""""""""""""""
set nocompatible    " be iMproved
filetype off        " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

":BundleList 列出已经安装的插件
":BundleInstall 安装所有配置文件中的插件
":BundleInstall! 更新所有插件
":BundleSearch 搜索插件
":BundleClean! 根据配置文件删除插件

"插件管理核心库
Bundle "mattn/zencoding-vim"
Bundle "msanders/snipmate.vim"
Bundle "kevinw/pyflakes-vim"
Bundle "kien/ctrlp.vim"
Bundle "vim-scripts/vimwiki"
Bundle "pangloss/vim-javascript"
Bundle "tomasr/molokai"
Bundle "scrooloose/nerdtree"
Bundle "skammer/vim-css-color"
Bundle "vim-scripts/Align"
Bundle "Shougo/neocomplcache"
Bundle "vim-scripts/AuthorInfo"
Bundle "scrooloose/nerdcommenter"

""==================Plugin start
""代码补全
""Bundle 'Shougo/neosnippet'
""Bundle 'Shougo/neocomplcache-snippets-complete'
""代码段自动生成
"Bundle 'snipMate'
"
""Bundle "MarcWeber/vim-addon-mw-utils"
""Bundle "tomtom/tlib_vim"
"Bundle "snipmate-snippets"
"Bundle "garbas/vim-snipmate"
"
"Bundle 'neocomplcache'
"Bundle 'neocomplcache-snippets_complete'
""插件 语法/高亮
"Bundle 'JavaScript-syntax'
"Bundle 'jQuery'
"Bundle 'othree/html5.vim'
"Bundle 'groenewege/vim-less'
"Bundle 'Markdown'
"Bundle 'Markdown-syntax'
"Bundle 'php.vim-html-enhanced'
""HTML混排缩进改善
"Bundle "pangloss/vim-javascript"
"
""按特殊字符对其， 需要修改源码以支持中文字符 https://github.com/muzuiget/hacking-patches/blob/master/tabular_cjk_width.patch
"Bundle 'Tabular'
"
""statuslines 增强
"Bundle 'scrooloose/vim-statline'
"
""文件管理器
"Bundle 'scrooloose/nerdtree'
""autocmd vimenter * NERDTree
"
""Bundle 'hallettj/jslint.vim'
"
""即时预览CSS颜色
""Bundle 'skammer/vim-css-color'
"Bundle 'ZenCoding.vim'
""Bundle 'The-NERD-tree'
""Bundle 'SuperTab'
""=======================Plugin end
"激活插件与文件类型的依赖关系
filetype plugin indent on
"##########vundle插件管理器结束##########
