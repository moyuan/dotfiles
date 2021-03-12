    " All system-wide defaults are set in $VIMRUNTIME/debian.vim usually just
" /usr/share/vim/vimcurrent/debian.vim and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file /etc/vim/vimrc, since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif
"
" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

set rtp+=~/.fzf
set rtp+=~/.vim/plugged/palenight.vim
set rtp+=~/.vim/plugged/onehalf/vim
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
source /etc/vim/vimrc.local
endif
set nocompatible              " be iMproved
filetype off                  " required!

"set termguicolors
" Enable true color 启用终端24位色
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
call plug#begin('~/.vim/plugged')

" My bundles here:
"
Plug 'sonph/onehalf'
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'easymotion/vim-easymotion'
Plug 'git://github.com/scrooloose/nerdtree.git'
Plug 'git://github.com/flazz/vim-colorschemes.git'
Plug 'git://github.com/tpope/vim-surround.git'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'git://github.com/ervandew/supertab.git'
Plug 'git://github.com/jiangmiao/auto-pairs.git'
Plug 'alvan/vim-closetag'
Plug 'junegunn/fzf.vim'

" Optional:
"Plug 'Sirver/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'epilande/vim-es2015-snippets'
"Plug 'epilande/vim-react-snippets'
"Plug 'ycm-core/YouCompleteMe'
"Plug 'ternjs/tern_for_vim'
Plug 'jnurmine/Zenburn'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'm-pilia/vim-ccls'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app &yarn install' }
call plug#end()

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

" autocmd vimenter * if !argc() | NERDTree | endif


set runtimepath^=~/.vim/bundle/ctrlp,~/.vim/

" set paste mode toggle
set pastetoggle=<F2>
" Douglas Black
" Misc {{{
set ttyfast                     " faster redraw
set backspace=indent,eol,start
" }}}
" Spaces & Tabs {{{
"au BufNewFile,BufRead *.c,*.cpp,*.h,*.hpp
"    \ set tabstop=4 |           " 4 space tab
"    \ set expandtab |          " use spaces for tabs
"    \ set softtabstop=4 |     " 4 space tab
"    \ set shiftwidth=4 |
"    \ set modelines=1 |
"    \ filetype indent on |
"    \ filetype plugin on |
"    \ filetype=unix |
"    \ set autoindent |
set ruler
syntax enable
set smartindent
set tabstop=4
set shiftwidth=4
"set expandtab
" }}}
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline          " highlight current line
set wildmenu
"set lazyredraw
set showmatch           " higlight matching parenthesis
" }}}
" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}
" Folding {{{
"=== folding ===
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldlevel=99
"set foldenable          " don't fold files by default on open
nnoremap <space> za
"set ctrl-o to open a new line after this line
"nnoremap <C-O> <C-O>o
"set foldlevelstart=10    " start with fold level of 1
" }}}
" Line Shortcuts {{{
nnoremap <F5> :silent update<Bar>silent !firefox %:p &<CR>
nnoremap j gj
nnoremap k gk
"nnoremap B ^
"nnoremap E $
"nnoremap $ <nop>
"nnoremap ^ <nop>
nnoremap gV `[v`]
"nnoremap <c-]> <c-w><c-]><c-w>T
"onoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
"xnoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
"onoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>
"xnoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>

"onoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
"xnoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
"onoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
"xnoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
" }}}
" Leader Shortcuts {{{
let mapleader=","
"nnoremap <leader>m :silent make\|redraw!\|cw<CR>
nnoremap <leader>t :tab tjump <C-r><C-w><CR> 
"1
nnoremap <leader>r <c-t>
"1
nnoremap <leader>w :NERDTree<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>eb :vsp ~/.bashrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>sb :! source ~/.bashrc<CR>
"nnoremap <leader>p :set paste<CR>
nnoremap <leader>np :set nopaste<CR>
"1
nnoremap <leader><space> :noh<CR>
map f <Plug>(easymotion-overwin-f2)
map <leader>l <Plug>(easymotion-bd-jk)
nmap <leader>l <Plug>(easymotion-overwin-line)
map <leader>d <Plug>(easymotion-bd-w)
nmap <leader>d <Plug>(easymotion-overwin-w)
"nnoremap <leader>1 :set number!<CR>
"nnoremap <leader>d :Make! 
"nnoremap <leader>r :call RunTestFile()<CR>
"nnoremap <leader>g :call RunGoFile()<CR>
"vnoremap <leader>y "+y
"vmap v <Plug>(expand_region_expand)
"vmap <C-v> <Plug>(expand_region_shrink)
inoremap jk <esc>
" }}}
" Powerline {{{

set encoding=utf-8
"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"if !exists('g:airline_symbols')
"      let g:airline_symbols = {}
"  endif
"let g:airline_symbols.space = "\ua0"
"let g:airline#extensions#tabline#formatter = 'unique-tail-improved'
set laststatus=2
" }}}
" CtrlP {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd= 'CtrlP'
"let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|target/|\.(o|swp|pyc|egg)$'
" }}}
" NERDTree {{{
"let NERDTreeIgnore = ['\.pyc$', 'build', 'venv', 'egg', 'egg-info/', 'dist', 'docs']
let NERDTreeWinSize=20
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" }}}
" Syntastic {{{
"let g:syntastic_python_checkers = ['pylint']
"let g:syntastic_python_flake8_args = '--ignore=E501'
"let g:syntastic_python_pylint_args = '--load-plugins pylint_django'
""let g:syntastic_ignore_files = ['.java$']
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
""let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
" }}}
" Launch Config {{{
"runtime! debian.vim
"set nocompatible
" }}}
" ultisnips {{{
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" }}}
" ultisnips-Youcompleteme-supertab {{{
" let g:ycm_key_list_select_completion = ['\<C-n>', '\<Down>']
" let g:ycm_key_list_previous_completion = ['\<C-p>', '\<Up>']
let g:SuperTabDefaultCompletionType = '\<C-p>'
" let g:SuperTabCrMapping = 0
" better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" }}}
"" Tmux {{{
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

"if exists('$TMUX') " allows cursor change in tmux mode
"    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"else
"    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"endif
"" }}}
" MacVim {{{
"set guioptions-=r 
"set guioptions-=L
" }}}
" AutoGroups {{{
"augroup configgroup
"    autocmd!
     autocmd FileType python set ft=python.django
"    autocmd VimEnter * highlight clear SignColumn
    "autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md,*.rb :call <SID>StripTrailingWhitespaces()
    "autocmd BufEnter *.cls setlocal filetype=java
    "autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    "autocmd BufEnter Makefile setlocal noexpandtab
    "autocmd BufEnter *.sh setlocal tabstop=2
    "autocmd BufEnter *.sh setlocal shiftwidth=2
    "autocmd BufEnter *.sh setlocal softtabstop=2
"augroup END
" }}}
" Backups {{{
"set backup 
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
"set backupskip=/tmp/*,/private/tmp/* 
"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
"set writebackup
" }}}
" Custom Functions {{{
"set paste
" }}}
" Python {{{

" enable all Python syntax highlighting features
let python_highlight_all = 1
let g:jedi#completions_command = "<leader>g"

" show a visual line under the cursor's current line
set cursorline

vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> -# :s/^#//<cr>:noh<cr>

" show docstrings for folded code
let g:SimpylFold_docstring_preview=1
au BufNewFile,BufRead *.py
    \ set tabstop=4  |
    \ set softtabstop=4 |
    \ set shiftwidth=4  |
"    \ set textwidth=100  |
    \ set expandtab |
    \ set autoindent    |
    \ set fileformat=unix   |

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2  |
" Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" Youcomplete me setting
"let g:ycm_autoclose_preview_window_after_completion=1
" g:ycm_server_keep_logfiles

let g:loaded_youcompleteme = 1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cuda', 'objc', 'objcpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF
" }}}

" Webicon {{{
"let g:webdevicons_enable = 1
"let g:webdevicons_enable_nerdtree = 1
"let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_airline_tabline = 0
let g:webdevicons_enable_airline_statusline = 0
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'
" }}}
" Closetag {{{
let g:closetag_filenames = '*.html,*.xhtml,*.ptml,*.js,*.jsx'
let g:closetag_shortcut = '>'
" }}}
" vim:foldmethod=marker:foldlevel=0
autocmd FileType json syntax match Comment +\/\/.\+$+
" Coc.nvim {{{
"nmap <silent> <F3> <Plug>(coc-definition)
"nmap <silent> <leader>g <Plug>(coc-references)
"nn <silent> K :call CocActionAsync('doHover')<cr>
"
"set updatetime=300
"au CursorHold * sil call CocActionAsync('highlight')
"au CursorHoldI * sil call CocActionAsync('showSignatureHelp')
"
"" bases
"nn <silent> <F4> :call CocLocations('ccls','$ccls/inheritance')<cr>
"" bases of up to 3 levels
"nn <silent> xB :call CocLocations('ccls','$ccls/inheritance',{'levels':3})<cr>
"" derived
"nn <silent> xd :call CocLocations('ccls','$ccls/inheritance',{'derived':v:true})<cr>
"" derived of up to 3 levels
"nn <silent> xD :call CocLocations('ccls','$ccls/inheritance',{'derived':v:true,'levels':3})<cr>
"
"" caller
nmap <silent> <F6> :call CocLocations('ccls','$ccls/call', {}, 'vsplit')<cr>
"" callee
"nn <silent> xC :call CocLocations('ccls','$ccls/call',{'callee':v:true})<cr>
"
"" $ccls/member
"" member variables / variables in a namespace
"nn <silent> xm :call CocLocations('ccls','$ccls/member')<cr>
"" member functions / functions in a namespace
"nn <silent> xf :call CocLocations('ccls','$ccls/member',{'kind':3})<cr>
"" nested classes / types in a namespace
"nn <silent> xs :call CocLocations('ccls','$ccls/member',{'kind':2})<cr>
"
"nmap <silent> xt <Plug>(coc-type-definition)<cr>
nn <silent> <leader>v :call CocLocations('ccls','$ccls/vars')<cr>
"nn <silent> xV :call CocLocations('ccls','$ccls/vars',{'kind':1})<cr>

"nn xx x
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

set colorcolumn=80

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" }}}
"
" vim-ccls
let g:ccls_levels = 1
let g:ccls_size = 50
let g:ccls_position = 'botright'
let g:ccls_orientation = 'horizontal'
"nmap <silent> <buffer> o    <Plug>(yggdrasil-toggle-node)
"nmap <silent> <buffer> <cr> <Plug>(yggdrasil-execute-node)
"nnoremap <silent> <buffer> q :q<cr>

" vim-lsp Register ccls C++ lanuage server.
"if executable('ccls')
"   au User lsp_setup call lsp#register_server({
"      \ 'name': 'ccls',
"      \ 'cmd': {server_info->['ccls']},
"      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
"      \ 'initialization_options': {'cache': {'directory': '/tmp/ccls/cache' }},
""      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
"      \ })
"endif

" terminal {{{
"set termwinsize=15x0
set termwinsize=0x70
nnoremap <silent> <leader>bt :bot terminal<cr>
nnoremap <silent> <leader>vt :bo vertical terminal<cr>
tnoremap <silent> <c-h> <c-w>h
tnoremap <silent> <c-j> <c-w>j
tnoremap <silent> <c-k> <c-w>k
tnoremap <silent> <c-l> <c-w>l
tnoremap <silent> <c-b> <c-w>N
" }}}
noremap <silent> <leader>y "+y
noremap <silent> <leader>p "+p
" Markdown preview {{{
"
"autocmd FileType markdown let b:sleuth_automatic=0
autocmd FileType markdown set conceallevel=0
" autocmd FileType markdown normal zR
let g:vim_markdown_frontmatter=1
"let g:mkdp_refresh_slow=1
let g:mkdp_markdown_css='$HOME/dotfiles/github-markdown.css'
noremap <leader>om :MarkdownPreview<CR>
"}}}

"let g:gruvbox_italic=1
set background=dark
"colorscheme gruvbox

" Italics for my favorite color scheme
let g:palenight_terminal_italics=1
colorscheme palenight
colorscheme onehalfdark
"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  colorscheme zenburn
"endif
