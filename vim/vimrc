
"     __  __ /\_\    ___ ___   _ __   ___
"    /\ \/\ \\/\ \ /' __` __`\/\`'__\/'___\
"  __\ \ \_/ |\ \ \/\ \/\ \/\ \ \ \//\ \__/
" /\_\\ \___/  \ \_\ \_\ \_\ \_\ \_\\ \____\
" \/_/ \/__/    \/_/\/_/\/_/\/_/\/_/ \/____/

" Settings at startup
set number
set relativenumber
set updatetime=1000
set wrap lbr
set mouse=a
" set noendofline binary

filetype plugin indent on
syntax enable

" Leader key
let mapleader = ";"

" Change cursor to underline when in insert mode
" :autocmd InsertEnter,InsertLeave * set cul!

" Vim-plug plugins from repositories
call plug#begin('~/.vim/plugged')

" Vim-live-latex
" Plug 'https://github.com/ying17zi/vim-live-latex-preview.git'

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'https://github.com/xuhdev/vim-latex-live-preview.git'

" Change cursor shape to line when in insert mode
Plug 'https://github.com/wincent/terminus.git'

" Vim Fugitive
Plug 'https://github.com/tpope/vim-fugitive.git'

" Goyo
Plug 'junegunn/goyo.vim'

" Markdown
Plug 'https://github.com/plasticboy/vim-markdown.git'

" Vim-surround
Plug 'https://github.com/tpope/vim-surround.git'

" Tabular-vim
Plug 'https://github.com/godlygeek/tabular.git'

" Vim-easy-align
Plug 'https://github.com/junegunn/vim-easy-align.git'

" Vim-lightline
Plug 'https://github.com/itchyny/lightline.vim.git'

" Exchange-vim
Plug 'https://github.com/tommcdo/vim-exchange.git'

" Titlecase-vim
Plug 'https://github.com/christoomey/vim-titlecase.git'

" Vim-instant-markdown
" Plug 'https://github.com/suan/vim-instant-markdown.git'

" Vim-easymotion
Plug 'https://github.com/easymotion/vim-easymotion.git'

" Vim-NERDtree
Plug 'https://github.com/scrooloose/nerdtree.git'

" Vim-screen
Plug 'https://github.com/ervandew/screen.git'

" Nvim-R
Plug 'https://github.com/jalvesaq/Nvim-R.git'

" Vim-tmux-navigator
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'

" openSCAD-syntax-highlighting
Plug 'https://github.com/sirtaj/vim-openscad.git'

" Vim-rmarkdown
"Plug 'https://github.com/vim-pandoc/vim-rmarkdown.git'

" Vim-pandoc
Plug 'https://github.com/vim-pandoc/vim-pandoc.git'

" Vim-pandoc-syntax
Plug 'https://github.com/vim-pandoc/vim-pandoc-syntax.git'

" ctrlp.vim
Plug 'https://github.com/kien/ctrlp.vim.git'

" YouCompleteMe
Plug 'https://github.com/Valloric/YouCompleteMe.git'

" Jedi
Plug 'https://github.com/davidhalter/jedi.git'

" Ycm-server
Plug 'https://github.com/Valloric/ycmd.git'

" Syntastic
Plug 'https://github.com/vim-syntastic/syntastic.git'

" Lintr
Plug 'https://github.com/jimhester/lintr.git'

" ultisnips
Plug 'https://github.com/SirVer/ultisnips.git'

" Default snippets
Plug 'https://github.com/honza/vim-snippets.git'

" Undotree
Plug 'https://github.com/mbbill/undotree.git'

" Taglist
" Plug 'https://github.com/vim-scripts/taglist.vim.git'

" Tagbar
Plug 'https://github.com/majutsushi/tagbar.git'

" Gutentags
" Plug 'https://github.com/ludovicchabant/vim-gutentags.git'

" Repeat.vim
Plug 'https://github.com/tpope/vim-repeat.git'

" Vim-minimap
Plug 'https://github.com/severin-lemaignan/vim-minimap.git'

" Vim-arpeggio
Plug 'https://github.com/kana/vim-arpeggio.git'

" onedark.vim color scheme
Plug 'https://github.com/joshdick/onedark.vim.git'

" palenight.vim color scheme
Plug 'https://github.com/drewtempelmeyer/palenight.vim.git'

" vimux
Plug 'https://github.com/benmills/vimux.git'

" vimcmdline
Plug 'https://github.com/jalvesaq/vimcmdline.git'

" vim-multiple-cursors
Plug 'https://github.com/terryma/vim-multiple-cursors.git'

" Emmet-vim
Plug 'https://github.com/mattn/emmet-vim.git'

" Vim-i3-syntax
" Plug 'https://github.com/PotatoesMaster/i3-vim-syntax.git'

" Vim-i3-syntax
" Plug 'https://github.com/mboughaba/i3config.vim.git'

" ShowMarks
" Plug 'https://github.com/vim-scripts/ShowMarks.git'

" vim-indent-guides
Plug 'https://github.com/nathanaelkane/vim-indent-guides.git'

" Better whitespace
Plug 'https://github.com/ntpeters/vim-better-whitespace.git'

" Scratch.vim
Plug 'https://github.com/mtth/scratch.vim.git'

" NERDtree tabs
Plug 'https://github.com/jistr/vim-nerdtree-tabs.git'

" vim-autoclose
Plug 'https://github.com/Townk/vim-autoclose.git'

" vim-syntax_highlighting
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'

" vim-crystal
Plug 'https://github.com/rhysd/vim-crystal.git'

" vim-windowswap
Plug 'https://github.com/wesQ3/vim-windowswap.git'

call plug#end()

" Live preview plugin for LaTeX !!! DOESN'T WORK !!!
" let g:livepreview_previewer = 'mupdf'

" General
" Spellcheck
noremap <F7> :set spell! spell?<CR>

" Highlight search
noremap <F8> :set hlsearch! hlsearch?<CR>

" Vim-lightline
" -----
set laststatus=2
set t_Co=256

"let g:lightline = {
"      \ 'colorscheme': 'Tomorrow_Night_Eighties',
"      \ }

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
" -----

" Markdown
" -----
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_no_default_key_mappings = 1

autocmd FileType markdown nnoremap j gj
autocmd FileType markdown nnoremap k gk
autocmd FileType markdown vnoremap j gj
autocmd FileType markdown vnoremap k gk

autocmd FileType markdown nnoremap <C-j> <down>
autocmd FileType markdown nnoremap <C-k> <up>
autocmd FileType markdown vnoremap <C-j> <down>
autocmd FileType markdown vnoremap <C-k> <up>
" -----

" Rmarkdown
" -----

autocmd Filetype Rmd, rmd set nospell

autocmd Filetype Rmd, rmd map <F5> :w<CR> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
" autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

autocmd FileType Rmd, rmd nnoremap j gj
autocmd FileType Rmd, rmd nnoremap k gk
autocmd FileType Rmd, rmd vnoremap j gj
autocmd FileType Rmd, rmd vnoremap k gk

autocmd FileType Rmd, rmd nnoremap <C-j> <down>
autocmd FileType Rmd, rmd nnoremap <C-k> <up>
autocmd FileType Rmd, rmd vnoremap <C-j> <down>
autocmd FileType Rmd, rmd vnoremap <C-k> <up>

autocmd FileType Rmd, rmd vnoremap <Down> 	:m '>+1<CR>gv=gv
autocmd FileType Rmd, rmd vnoremap <Up> 		:m '<-2<CR>gv=gv
" -----

" Custom key binds
nnoremap <leader>n 	:w ~/Documents/
nnoremap <leader>w 	:w<CR>
nnoremap <leader>q 	:wq<CR>
nnoremap <leader>g	:Goyo<CR>
inoremap jj 		<Esc>

" Moving around through wrapped lines
vmap <C-j> gj
vmap <C-k> gk
vmap <C-l> g$
" vmap <C-6> g^
vmap <C-h> g^
nmap <C-j> gj
nmap <C-k> gk
nmap <C-l> g$
" nmap <C-6> g^
nmap <C-h> g^

" Vim-instant-markdown
" NOT WORKING
" let g:instant_markdown_autostart = 0
" nnoremap <leader>mt 	:InstantMarkdownPreview<CR>

" -----
" LaTeX
" -----
" Navigating with guides
autocmd FileType tex noremap <Space><Space> <Esc>/<Enter>"_c4l
autocmd FileType tex noremap <Space><Space> <Esc>/<++><Enter>"_c4l
autocmd FileType tex noremap <Space><Space> <Esc>/<++><Enter>"_c4l

" LaTeX keybinds
autocmd FileType tex inoremap <leader>em \emph{}<++><Esc>T{i
autocmd FileType tex inoremap <leader>bf \textbf{}<++><Esc>T{i
autocmd FileType tex inoremap <leader>it \textit{}<++><Esc>T{i
autocmd FileType tex inoremap <leader>ct \cite{}<++><Esc>T{i
autocmd FileType tex inoremap <leader>ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap <leader>li <Enter>\item<Space>
" autocmd FileType tex inoremap <leader>hl \hl{}<++><Esc>T{i

autocmd FileType tex nnoremap j gj
autocmd FileType tex nnoremap k gk
autocmd FileType tex vnoremap j gj
autocmd FileType tex vnoremap k gk

autocmd FileType tex nnoremap <C-j> <down>
autocmd FileType tex nnoremap <C-k> <up>
autocmd FileType tex vnoremap <C-j> <down>
autocmd FileType tex vnoremap <C-k> <up>

autocmd FileType tex nnoremap <Down> 	:m .+1<CR>==
autocmd FileType tex nnoremap <Up> 		:m .-2<CR>==
autocmd FileType tex vnoremap <Down> 	:m '>+1<CR>gv=gv
autocmd FileType tex vnoremap <Up> 		:m '<-2<CR>gv=gv

" Start live preview
autocmd FileType tex nnoremap <leader>t :LLPStartPreview<CR>
" -----

" Titlecase
" >>>NOT WORKING<<<
" let g:titlecase_map_keys = 0
" nnoremap <leader>gt <Plug>Titlecase
" vnoremap <leader>gt <Plug>Titlecase
" nnoremap <leader>gT <Plug>TitlecaseLine

" Editing layout keybinds
" -----
" Moving lines up and down
"nnoremap <Down> 	:m .+1<CR>==
"nnoremap <Up> 		:m .-2<CR>==
" inoremap <Down>	<Esc>:m .+1<CR>==gi
" inoremap <Up>		<Esc>:m .-2<CR>==gi
"vnoremap <Down> 	:m '>+1<CR>gv=gv
"vnoremap <Up> 		:m '<-2<CR>gv=gv

" Copying to system clipboard
nnoremap <Left> 	"+yy
nnoremap <Right> 	"+p
inoremap <Left>		<Esc>"*yy
inoremap <Right>	<Esc>"*p
vnoremap <Left> 	"+y
vnoremap <Right> 	"+p
" Create new line with enter
nmap <CR> 		o<Esc>
" -----

" EasyAlign ***BETA***
" -----
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" -----

" NERDtree
" nnoremap <leader>n 	:NERDTreeToggle<CR>
nnoremap <leader>n 	:NERDTreeTabsToggle<CR>
" inoremap <leader>n 	:NERDTreeToggle<CR>
inoremap <leader>n 	:NERDTreeTabsToggle<CR>
" vnoremap <leader>n 	:NERDTreeToggle<CR>
vnoremap <leader>n 	:NERDTreeTabsToggle<CR>
" Close NERDtree if it's the only window left open
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"
" Open NERDtree automatically if opened in directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Open NERDtree with different default width
let g:NERDTreeWinSize=25
" -----

" Switch between tabs
nnoremap <leader>h  :tabfirst<CR>
nnoremap <leader>j  :tabnext<CR>
nnoremap <leader>k  :tabprev<CR>
nnoremap <leader>l  :tablast<CR>
" -----

" R
autocmd FileType r set tabstop=2
autocmd FileType r set softtabstop=2
autocmd FileType r set expandtab
autocmd FileType r set shiftwidth=2
autocmd FileType r set smarttab
autocmd FileType r set colorcolumn=80

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" sample settings for vim-r-plugin and screen.vim
" Installation
"       - Place plugin file under ~/.vim/
"       - To activate help, type in vim :helptags ~/.vim/doc
"       - Place the following vim conf lines in .vimrc
" Usage
"       - Read intro/help in vim with :h vim-r-plugin or :h screen.txt
"       - To initialize vim/R session, start screen/tmux, open some *.R file in vim and then hit F2 key
"       - Object/omni completion command CTRL-X CTRL-O
"       - To update object list for omni completion, run :RUpdateObjList
" My favorite Vim/R window arrangement
"	tmux attach
"	Open *.R file in Vim and hit F2 to open R
"	Go to R pane and create another pane with C-a %
"	Open second R session in new pane
"	Go to vim pane and open a new viewport with :split *.R
" Useful tmux commands
"       tmux new -s <myname>       start new session with a specific name
"	tmux ls (C-a-s)            list tmux session
"       tmux attach -t <id>        attach to specific session
"       tmux kill-session -t <id>  kill specific session
" 	C-a-: kill-session         kill a session
" 	C-a %                      split pane vertically
"       C-a "                      split pane horizontally
" 	C-a-o                      jump cursor to next pane
"	C-a C-o                    swap panes
" 	C-a-: resize-pane -L 10    resizes pane by 10 to left (L R U D)
" Corresponding Vim commands
" 	:split or :vsplit      split viewport
" 	C-w-w                  jump cursor to next pane-
" 	C-w-r                  swap viewports
" 	C-w C-++               resize viewports to equal split
" 	C-w 10+                increase size of current pane by value

" To open R in terminal rather than RGui (only necessary on OS X)
" let vimrplugin_applescript = 0
" let vimrplugin_screenplugin = 0

" For tmux support
let g:ScreenImpl = 'Tmux'
let vimrplugin_screenvsplit = 1 " For vertical tmux split
let g:ScreenShellInitialFocus = 'shell'

" Test extra options to make R open in tmux pane
let R_in_buffer = 0
let R_tmux_split = 1

" instruct to use your own .screenrc file
let g:vimrplugin_noscreenrc = 1

" For integration of r-plugin with screen.vim
let g:vimrplugin_screenplugin = 1

" Don't use conque shell if installed
let vimrplugin_conqueplugin = 0

" map the letter 'r' to send visually selected lines to R
let g:vimrplugin_map_r = 1

" see R documentation in a Vim buffer
let vimrplugin_vimpager = "no"

"set expandtab
set shiftwidth=4
set tabstop=4

" start R with F2 key
map <F2> <Plug>RStart
imap <F2> <Plug>RStart
vmap <F2> <Plug>RStart

" send selection to R with space bar
vmap <Space> <Plug>RDSendSelection

" send line to R with space bar
nmap <Space> <Plug>RDSendLine

" R commands in R output are highlighted
let g:rout_follow_colorscheme = 1
let g:Rout_more_colors = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" YouCompleteMe
" autocmd FileType python map <leader>y  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
let g:ycm_collect_identifiers_from_comments_and_strings = 1

let g:ycm_filetype_blacklist = {
      \ 'rmd' : 1,
      \ 'Rmd' : 1,
      \ 'rmarkdown' : 1,
      \ 'Rmarkdown' : 1,
      \ 'markdown' : 1,
      \ 'tex' : 1,
	  \}

" let g:ycm_python_binary_path = 'python'
" let g:ycm_python_binary_path = '/usr/bin/python3'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar
autocmd FileType python nmap <leader>t :TagbarToggle<CR>
autocmd FileType R,r nmap <leader>t :TagbarToggle<CR>

let g:tagbar_type_r = {
    \ 'ctagstype' : 'r',
    \ 'kinds'     : [
        \ 'f:Functions',
        \ 'g:GlobalVariables',
        \ 'v:FunctionVariables',
    \ ]
\ }


"autocmd FileType html nmap <leader>t :TagbarToggle<CR>
" Doesn't work for css files. Requires Universal Ctags
"autocmd FileType css nmap <leader>t :TagbarToggle<CR>
"
"let g:tagbar_type_css = {
"\ 'ctagstype' : 'Css',
"    \ 'kinds'     : [
"        \ 'c:classes',
"        \ 's:selectors',
"        \ 'i:identities'
"    \ ]
"\ }

" Taglist
" autocmd FileType html nmap <leader>t :TlistToggle<CR>
"
" Ctags
"set tags=./tags,tags;$HOME
"set autochdir
"set tags=tags;
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

nnoremap <F9>  :SyntasticToggleMode<cr>
nnoremap <F10> :SyntasticCheck<cr>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = {
	\ 'mode': 'passive',
	\ 'active_filetypes':
	\	['php', 'js'] }

let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = ['lintr']
" let g:syntastic_r_lintr_linters = "with_defaults(line_length_linter(120))"
let g:syntastic_html_checkers = ['validator']

" Python
autocmd FileType python set expandtab
autocmd FileType python set textwidth=79
autocmd FileType python set tabstop=8
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set autoindent
autocmd FileType python set colorcolumn=80
autocmd FileType python :syntax on

autocmd FileType python vnoremap <silent> <F3> :w <bar> !python3.6<CR>
autocmd FileType python nnoremap <silent> <F3> :w <bar> !python3.6 %<CR>
autocmd FileType python vnoremap <silent> <F12> :w <bar> !python3.5<CR>
autocmd FileType python nnoremap <silent> <F12> :w <bar> !python3.5 %<CR>
autocmd FileType python vnoremap <silent> <F4> :w <bar> !python2.7<CR>
autocmd FileType python nnoremap <silent> <F4> :w <bar> !python2.7 %<CR>

autocmd FileType python nnoremap <Down> 	:m .+1<CR>==
autocmd FileType python nnoremap <Up> 		:m .-2<CR>==
autocmd FileType python vnoremap <Down> 	:m '>+1<CR>gv=gv
autocmd FileType python vnoremap <Up> 		:m '<-2<CR>gv=gv
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" C++
autocmd FileType c,cc,cpp set noexpandtab
autocmd FileType c,cc,cpp set textwidth=79
autocmd FileType c,cc,cpp set tabstop=4
autocmd FileType c,cc,cpp set softtabstop=4
autocmd FileType c,cc,cpp set shiftwidth=4
autocmd FileType c,cc,cpp set autoindent
autocmd FileType c,cc,cpp set colorcolumn=80
autocmd FileType c,cc,cpp highlight ColorColumn ctermbg=darkgray
autocmd FileType c,cc,cpp :syntax on

" Example
" autocmd filetype c,cc,cpp nnoremap <F5> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd FileType c,cc,cpp nnoremap <F3> :w <bar> exec '!c++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd FileType c,cc,cpp nnoremap <F4> :w <bar> !./'%:r'<CR>

autocmd FileType c,cc,cpp nnoremap <Down> 	:m .+1<CR>==
autocmd FileType c,cc,cpp nnoremap <Up>		:m .-2<CR>==
autocmd FileType c,cc,cpp vnoremap <Down> 	:m '>+1<CR>gv=gv
autocmd FileType c,cc,cpp vnoremap <Up>		:m '<-2<CR>gv=gv
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" CtrlP
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
" let g:ctrlp_working_path_mode=''
nmap <leader>p :CtrlP ~<CR>

" Sort function to key
vnoremap <leader>s :sort<CR>

" Easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" Ultislips
" autocmd FileType python let g:UltiSnipsExpandTrigger="<leader><space>"
" autocmd FileType python let g:UltiSnipsJumpForwardTrigger="<leader><space>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsSnippetsDir= $HOME.'/.vim/plugged/ultisnips/'
let g:UltiSnipsSnippetDirectories=["ultisnips"]
let g:UltiSnipsExpandTrigger="<leader><space>"
let g:UltiSnipsJumpForwardTrigger="<leader><space>n"
let g:UltiSnipsJumpBackwardTrigger="<leader><leader><space>"
" let g:UltiSnipsListSnippets="<leader><h>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Undotree
nnoremap <leader>u :UndotreeToggle<cr>

" Stores all undo files in the same directory
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" if set, let undotree window get focus after being opened, otherwise
" focus will stay in current window.
if !exists('g:undotree_SetFocusWhenToggle')
    let g:undotree_SetFocusWhenToggle = 1
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vim Arpeggio
inoremap uip }
inoremap qer {

" vimux
let g:VimuxOrientation = "h"
autocmd FileType python nnoremap <buffer> <F6> :w <bar> :call VimuxRunCommand("clear; python3.6 " . bufname("%"))<CR>

" vimcmdline mappings
let cmdline_map_start          = '<leader>st'
let cmdline_map_send           = '<space>'
let cmdline_map_send_and_stay  = '<space>s'
let cmdline_map_source_fun     = '<F2>'
let cmdline_map_send_paragraph = '<leader>p'
let cmdline_map_send_block     = '<leader>b'
let cmdline_map_quit           = '<leader>gv'
"let cmdline_external_term_cmd  = "xterm -e '%s' &"
let cmdline_external_term_cmd  = "urxvt -e %s &"
let cmdline_follow_colorscheme = 1
let cmdline_app           = {}
let cmdline_app['python'] = 'python3.6'
let cmdline_app['sh'] = 'bash'

" vim-indent-guides
nnoremap <F11>		:IndentGuidesToggle<CR>

" Emmet-vim
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Better whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=0

" Scratch-vim
let g:scratch_height=15
nnoremap <leader>x :ScratchPreview<CR>
let g:scratch_autohide = 1

" Crystal
let g:crystal_define_mappings = 0
let g:crystal_define_mappings = 0
let g:crystal_define_mappings = 0
autocmd FileType crystal nnoremap <silent> <F3> :w <bar> !crystal run %<CR>
autocmd FileType crystal vnoremap <silent> <F3> :w <bar> !crystal run %<CR>
