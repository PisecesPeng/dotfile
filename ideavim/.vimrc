"" Source your .vimrc
"source ~/.vimrc

let mapleader = "\<space>"

""" Plugins  --------------------------------
" 环绕插入符号
set surround
" 快速跳转
set easymotion
" 快速操作参数
set argtextobj
" 快速调换位置
set exchange
" 复制时高亮
set highlightedyank
" 普通模式自动切换为英文输入法
set keep-english-in-normal
" 取消vim操作声音
set visualbell
set noerrorbells
" 开启模式显示
set showmode
""" Plugins  --------------------------------
""" Plugin settings -------------------------
let g:highlightedyank_highlight_duration = 1000
" 自定义颜色
" let g:highlightedyank_highlight_color = "rgba(160, 160, 160, 155)"
let g:argtextobj_pairs="[:],(:),<:>"
""" Plugin settings -------------------------
""" Plugin mapping ------------------------
nmap ss <Plug>(easymotion-s2)
""" Plugin mapping ------------------------
""" Action list mapping ------------------------
" 鼠标悬停
nmap <Leader>ed <Action>(ShowErrorDescription)
" 最近编辑
nmap <Leader><Leader>e <Action>(RecentLocations)
" 当前页面方法列表
nmap <Leader>fs <Action>(FileStructurePopup)
" 选择模式扩大选择范围
vmap v <Action>(EditorSelectWord)
" 选择模式缩小选择范围
vmap V <Action>(EditorUnSelectWord)
" 上一个tab
nmap <A-j> <Action>(PreviousTab)
" 上一个tab
nmap <A-k> <Action>(NextTab)
" navigate back
nmap <A-h> <Action>(Back)
" navigate forward
nmap <A-l> <Action>(Forward)
" 多光标选中单词
nmap <Leader>sa <Action>(SelectAllOccurrences)
nmap <C-g> <Action>(SelectNextOccurrence)
nmap <C-S-g> <Action>(UnselectPreviousOccurrence)
nmap <M-g> <Action>(FindNext)
nmap <M-S-g> <Action>(FindPrevious)
" 选择模式缩小选择范围
vmap <Tab> <Action>(EditorIndentSelection)
vmap <S-Tab> <Action>(EditorUnindentSelection)
" 合并行
nmap <S-j> <Action>(EditorJoinLines)
""" Action list mapping ------------------------

" Do incremental searching
set incsearch

" Find more examples here: https://jb.gg/share-ideavimrc
set ideajoin
set clipboard+=ideaput

" 不区分大小写
set ignorecase smartcase
" 忽略大小写
"set ignorecase

" 显示匹配括号
set showmatch

" 设置行号样式
set number relativenumber

" 突出搜索内容 ':noh'可取消突出
" set nohlsearch
" ic 不区分大小写
set hls ic

" 将系统剪贴板与vim剪贴板合并
set clipboard=unnamed

" 屏幕追随光标移动的距离
set scrolloff=8

" 突出显示行
set cursorline

" 使用'<'&'>'进行缩进
set shiftround
" 自动跟随上行缩进
set autoindent

" 按'*'搜索光标选中的内容, 取消高亮`:noh`
vnoremap * "ry/<C-R>r<CR>

" 删除不剪切
nnoremap d "_d
nnoremap dd "_dd
nnoremap D "_D
nnoremap <leader>d ""d
nnoremap <leader>dd ""dd
nnoremap <leader>D ""D
nnoremap c "_c
nnoremap cc "_cc
nnoremap C "_C
nnoremap <leader>c ""c
nnoremap <leader>cc ""cc
nnoremap <leader>C ""C
vnoremap d "_d
vnoremap dd "_dd
vnoremap D "_D
vnoremap <leader>d ""d
vnoremap <leader>dd ""dd
vnoremap <leader>D ""D
vnoremap c "_c
vnoremap cc "_cc
vnoremap C "_C
vnoremap <leader>c ""c
vnoremap <leader>cc ""cc
vnoremap <leader>C ""C
vnoremap p "_dp
vnoremap P "_dP
" 删除不剪切
" 组合命令删除不剪切
nnoremap diw "_diw
nnoremap di" "_di"
nnoremap di' "_di'
nnoremap di( "_di(
nnoremap di[ "_di[
nnoremap di{ "_di{
nnoremap di< "_di<

nnoremap daw "_daw
nnoremap da" "_da"
nnoremap da' "_da'
nnoremap da( "_da(
nnoremap da[ "_da[
nnoremap da{ "_da{
nnoremap da< "_da<

nnoremap ciw "_ciw
nnoremap ci" "_ci"
nnoremap ci' "_ci'
nnoremap ci( "_ci(
nnoremap ci[ "_ci[
nnoremap ci{ "_ci{
nnoremap ci< "_ci<

nnoremap caw "_caw
nnoremap ca" "_ca"
nnoremap ca' "_ca'
nnoremap ca( "_ca(
nnoremap ca[ "_ca[
nnoremap ca{ "_ca{
nnoremap ca< "_ca<
" 组合命令删除不剪切
" 切换tab
" noremap <A-j> gT
" noremap <A-k> gt
" 切换tab
" 快速跳转行首与行尾
nnoremap <C-l> $
nnoremap <C-h> ^
vnoremap <C-l> $
vnoremap <C-h> ^
" 快速跳转行首与行尾
" 移动5行
noremap <C-j> 5j
noremap <C-k> 5k
" 移动5行
" 插入模式移动
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <Backspace>
inoremap <C-b> <Esc>bi
inoremap <C-w> <Esc><Right>wi
inoremap <C-e> <Esc>ea
" 插入模式移动
" 插入模式转换普通模式
inoremap jk <Esc>
" 插入模式转换普通模式
" 切割窗口
nmap sx :split<Return>
nmap sy :vsplit<Return>
nmap <C-w> <C-w>w
" 切割窗口
" 文件保存
inoremap <C-s> <C-c>:w<CR>a
nnoremap <C-s> <C-c>:w<CR>
" 文件保存
" 保存行 至末尾
nnoremap Y y$
" 保存行 至末尾
" 保存行(不含换行符)
nnoremap yir ^v$y
nnoremap yar ^v$y
" 保存行(不含换行符)
" 删除行(不含换行符)
nnoremap dir ^v$"_d
nnoremap dar ^v$"_d
" 删除行(不含换行符)
" 删除行(不含换行符)
nnoremap cir ^v"_C
nnoremap car ^v"_C
" 删除行(不含换行符)
" 删除&复制行(不含换行符)
nnoremap yxr ^v$x
" 删除&复制行(不含换行符)
" 选中行(不含换行符)
nnoremap vir ^v$
nnoremap var ^v$
" 选中行(不含换行符)

function! Fdemo()
    let code = "demo"
    return code
endfunction





