" File              : init.vim
" License           : MIT
" Author            : Leo <alin.run@foxmail.com>
" Date              : 2021-05-05
" Last Modified Date: 2021-05-05
" Last Modified By  : Leo <alin.run@foxmail.com>

"  ____  _                 _        _   ___     _____ __  __ 
" / ___|(_)_ __ ___  _ __ | | ___  | \ | \ \   / /_ _|  \/  |
" \___ \| | '_ ` _ \| '_ \| |/ _ \ |  \| |\ \ / / | || |\/| |
"  ___) | | | | | | | |_) | |  __/ | |\  | \ V /  | || |  | |
" |____/|_|_| |_| |_| .__/|_|\___| |_| \_|  \_/  |___|_|  |_|
"                   |_|                                      

" ==================================================
" settings
" ==================================================

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 开启实时搜索功能
set incsearch

" 搜索时大小写不敏感
set ignorecase

" 关闭兼容模式
set nocompatible

" vim 自身命令行模式智能补全
set wildmenu

" 总是显示状态栏
set laststatus=2

" 显示光标当前位置
set ruler

" 开启行号显示
set number

" 开启相对行号
set relativenumber

" 在底部显示当前键入的指令
set showcmd

" 对应括号高亮
set showmatch

" 高亮显示当前行/列
set cursorline

" set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 禁止折行
set nowrap

" 开启语法高亮功能
syntax enable

" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 自适应不同语言的智能缩进
filetype indent on

" 将制表符扩展为空格
set expandtab

" 设置编辑时制表符占用空格数
set tabstop=4

" 设置格式化时制表符占用空格数
set shiftwidth=4

" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax

" 启动 vim 时关闭折叠代码
set nofoldenable

" 垂直滚动时，光标距离顶部/底部的位置（单位：行）
set scrolloff=10

" 设置文件编码
set encoding=UTF-8

" 出错时，不要发出响声
set noerrorbells

" 出错时，发出视觉提示，通常是屏幕闪烁
set visualbell

" 打开文件监视。如果在编辑过程中文件发生外部改变，就会发出提示
set autoread

" 如果文件夹不存在，则新建文件夹
if !isdirectory("$HOME/.config/nvim/files/backup/") || !isdirectory("$HOME/.config/nvim/files/undo/") || !isdirectory("$HOME/.config/nvim/files/swap/")
    silent !mkdir -p ~/.config/nvim/files/{ backup, swap, undo }
endif

" 备份文件
set backup
set backupdir   =~/.config/nvim/files/backup/

" 交换文件
set directory   =~/.config/nvim/files/swap//
set updatecount =100

" 撤销文件
set undofile
set undodir     =~/.config/nvim/files/undo/

" viminfo 文件
set viminfo     ='100,n~/.config/nvim/files/info/viminfo

" 离开插入模式
autocmd InsertLeave,WinEnter * set cursorline

" 进入插入模式
autocmd InsertEnter,WinLeave * set nocursorline nohlsearch

" 使 vim 加载更快
set updatetime=100


" ==================================================
" map
" ==================================================

inoremap jk <Esc>

" 定义快捷键到行首和行尾
nnoremap H 0
nnoremap L $

noremap ; :
noremap : ;

" buffer 切换快捷键
nnoremap J :bp<CR>
nnoremap K :bn<CR>

" Split fast
nnoremap <leader>\ :vs<CR>
nnoremap <leader>- :sp<CR>


" ==================================================
" Leader
" ==================================================

" 定义快捷键的前缀，即<Leader>
let mapleader="\<space>"

" Open the vimrc file anytime
nnoremap <Leader>rc :e $MYVIMRC<CR>

" 去除搜索高亮显示
nnoremap <Leader><CR> :nohlsearch<CR>

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y

" 设置快捷键将系统剪贴板内容粘贴至 vim
nnoremap <Leader>p "+p

" 定义快捷键关闭当前分割窗口
nnoremap <Leader>q :q<CR>

" 定义快捷键保存当前窗口内容
nnoremap <Leader>w :w<CR>

" 定义快捷键关闭当前 buffer
nnoremap <Leader>d :bd<CR>

" 依次遍历子窗口
nnoremap nw <C-W><C-W>

" 定义快捷键在结对符之间跳转
nnoremap <Leader>M %

" Allow saving of files as sudo when I forgot to start vim using sudo.
cnoremap w!! w !sudo tee > /dev/null %


" ==================================================
" Mode Settings
" ==================================================

" 设置插入模式光标为竖线
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

