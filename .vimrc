let $VIMRUNTIME='/usr/local/share/vim/'

if has('nvim')
  " Hack to get C-h working in neovim
  nmap <BS> <C-W>h
endif

" use , for the map leader
let mapleader=","

" ***********************
" vbundle Start here
" ***********************
"{{{1
" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

" Plugin List
Plugin 'tpope/vim-fugitive.git'
autocmd BufReadPost fugitive://* set bufhidden=delete
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-git.git'
Plugin 'tpope/vim-dispatch'
Plugin 'mklabs/grunt.vim'
Plugin 'KabbAmine/gulp-vim'
Plugin 'vcscommand.vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab.git'
"let g:SuperTabContextDefaultCompletionType = "<c-n>"

" Programming
" C++
"Plugin 'a.vim'
"" Special binding to prevent conflict with \a
"nnoremap <leader>aa :A<CR>
"nnoremap <leader>av :AV<CR>
"nnoremap <leader>as :AS<CR>
"Plugin 'c.vim'
"Plugin 'cpp.vim'
"Plugin 'OmniCppComplete'
" JavaScript
Plugin 'mxw/vim-jsx'
Plugin 'node'
Plugin 'isRuslan/vim-es6-snippets'
Plugin 'bentayloruk/vim-react-es6-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'jelera/vim-javascript-syntax'
"Plugin 'pangloss/vim-javascript'
set regexpengine=1
let g:javascript_enable_domhtmlcss=1
let g:javascript_fold=1
let g:javascript_ignore_javaScriptdoc=1
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'burnettk/vim-angular'
Plugin 'moll/vim-node'
Plugin 'Simple-Javascript-Indenter'
" For Simple Javascript Indenter
let g:SimpleJsIndenter_BriefMode=1
Plugin 'mattn/emmet-vim'
let g:user_emmet_install_global=1
" Syntax Highlighting
Plugin 'scrooloose/syntastic'
let g:syntastic_javascript_jscs_exec = '~/.node/bin/jscs'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
Plugin 'Valloric/ListToggle'
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240"
Plugin 'tpope/vim-markdown.git'
Plugin 'Markdown-syntax'
Plugin 'suan/vim-instant-markdown'
" Markdown preview Settings
let g:instant_markdown_autostart=1
let g:instant_markdown_slow=1
" Markdown TO HTML command
nmap <Leader>md :%!/usr/local/bin/Markdown.pl --html4tags <cr>
Plugin 'JSON.vim'
Plugin 'jQuery'
Plugin 'vim-indent-object'
Plugin 'tangledhelix/vim-octopress.git'

"***************
" COLOR SCHEMES
"***************
Plugin 'morhetz/gruvbox.git'                                                  " Gruvbox
"Plugin 'xero/sourcerer.vim.git'                                              " Sourcer
"Plugin 'jscappini/material.vim.git'                                          " Material Color Schemes
"Plugin 'daylerees/colour-schemes', { "rtp": "vim-themes/" }                  " Day Lerees Color Schemes
"Plugin 'tomasr/molokai.git'                                                  " Molokai Themes
"let g:molokai_original = 0
"let g:rehash256        = 1
"Plugin 'Solarized'                                                           " Solarized color themes
"let g:solarized_termtrans=0
"let g:solarized_italic=1
"let g:solarized_bold=1
"let g:solarized_termcolor=256
"let g:solarized_contrast="high"
"let g:solarized_visibility="normal"
"Plugin 'chriskempson/tomorrow-theme.git'                                     " Tomorrow color themes
"Plugin 'twilight'                                                            " Twilight color themes
" Detail color plugins
Plugin 'rking/vim-detailed'
" Seti color plugins
"Plugin 'trusktr/seti.vim'
colorscheme gruvbox
set background=dark
" End of COLOR SCHEMES 

"Docker
Plugin 'ekalinin/Dockerfile.vim'

" Utility
" similar to FUF but faster need to test this
Plugin 'Shougo/unite.vim.git'
" AirLine vim bar
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts           =1
let g:airline#extensions#tabline#enabled=1
set fillchars="fold: "
hi Folded term=NONE cterm=NONE gui=NONE ctermbg=NONE
set laststatus=2
Plugin 'EasyMotion'
Plugin 'unimpaired.vim'
Plugin 'surround.vim'
Plugin 'junegunn/vim-easy-align'
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
"Plugin 'godlygeek/tabular'
Plugin 'Align'
Plugin 'AutoAlign'
Plugin 'AutoClose'
Plugin 'The-NERD-Commenter'
let NERDCommentWholeLinesInVMode=1
Plugin 'The-NERD-tree'
" Hex Number Highlight
Plugin 'hexHighlight.vim'
" NERDTree configuration
let NERDTreeShowBookmarks=1
"let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>
" FuzzyFinder
Plugin 'L9'
Plugin 'FuzzyFinder'
" FuzzyFind configuration
nmap _B :FufBuffer <CR>
nmap _F :FufFile <CR>
nmap _J :FufJumpList <CR>
nmap _L :FufLine <CR>
nmap _Q :FufQuickfix <CR>
nmap _T :FufTag <CR>
" Buffer Explorer
Plugin 'bufexplorer.zip'
" Ctrl P Fuzzy File finder
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<C-T>' "Map CtrlP to Ctrl T
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '*\node_modules\*'
" Zoomwin
Plugin 'ZoomWin'
" ZoomWin configuration
map <Leader>zz :ZoomWin<CR>
" Ack
Plugin 'ack.vim'
let g:ackprg='ag --nogroup --column'
noremap <LocalLeader># "ayiw:Ack <C-r>a<CR>
vnoremap <LocalLeader># "ay:Ack <C-r>a<CR>
" Ag
Plugin 'rking/ag.vim'
" Vim Notes
Plugin 'xolox/vim-notes'
let g:notes_directories=['~/Dropbox/Apps/PlainText 2/Notes']
let g:notes_suffix = '.txt'
Plugin 'VOom'
Plugin 'xolox/vim-misc.git'
" Vim TODO.txt
Plugin 'Vimtodo'
Plugin 'todotxt.vim'
" Visual Increment
Plugin 'triglav/vim-visual-increment'
"}}}1


" ***********************
" Global VIM Settings
" ***********************
"{{{1
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Settings for MacVim
if has("gui_macvim")
  set gfn=Envy\ Code\ R\ VS:h9
  set fuopt+=maxhorz
  set guioptions=egmrt
  set fu
endif

if $TMUX==""
  set clipboard+=unnamed               "share the clipboard with OS
endif

set backspace=indent,eol,start      "allow backspacing over everything in insert mode

" Whitespace stuff
set wm=0                            "wrap margin
set bufhidden=hide                  "allow buffer to hide without saving
set hidden
set nowrap                          "no line wrap
set tabstop=2                       "set the indent to use space instead of tabs
set shiftwidth=2
set softtabstop=2
set expandtab
set foldmethod=syntax               "default fold method to honor file type syntax
set list listchars=tab:\ \ ,trail:·
set ffs=unix,mac,dos                "default file system type
set timeoutlen=500                  "key press delay to trigger the shortcut command
set ttimeout
set ttimeoutlen=20

set winminheight=0                  "set the minimze panel to 0
set title                           "set the title in the terminal
set titleold="Terminal"
set titlestring=%F\ -\ Vim
set nowritebackup                   "no need for backup, use repo system
set nobackup
set noswapfile                      "dont make swap file
set hlsearch                        "highlight search result
set incsearch                       "show search matche as you type
set ignorecase                      "ignore case when searching
set smartcase                       "but use the case if its provided
set copyindent
set history=1000
set undolevels=1000
set number                          "display line number
set shiftround                      "use shift length when use manual indent
set showmatch                       "show matching parenthesis
set matchpairs+=<:>                 "show matching tags
set ruler                           "show cursor position at all time
set showcmd                         "display incomplete commands
set cursorline                      "display the cursor horizontal line
"set cursorcolumn                    "display the cursor vertical line
set scrolloff=999                   " Keep the cursor in the middle of the screen
set wildmode=list:longest,list:full " Tab completion
set wildignore+=*.o,*.obj,.git,*.rbc,.svn,*/tmp/*,*.so,*.swp,*.zip
set backupdir=~/.vim/backup         "Directories for swp files
set directory=~/.vim/backup
let g:changes_autocmd=1

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
source $VIMRUNTIME/syntax/syntax.vim
set background=dark
set linespace=2
set guifont=Ubuntu\ Mono\ derivative\ Powerline:h10
"let s:background='#151718'
hi NonText ctermfg=250 ctermbg=none
syntax enable
syntax on

" Highlight the first 115 columns
if exists('+colorcolumn')
  set cc=+1
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>115v.\+', -1)
endif

" Some keyboard shortcut helper
" Clear Trailing Spaces and Align Code"
nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
nmap _# :set expandtab<CR> :retab! :call Preserve("normal gg=G")<CR>

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Bubble multiple lines
vmap <C-K> [egv
vmap <C-J> ]egv
" Unimpaired configuration
" Bubble single lines
nmap <C-K> [e
nmap <C-J> ]e

" map j and k to support text wrapping
nnoremap j gj
nnoremap k gk

" shortcut for window navigation
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h
nmap <C-j><C-j> <C-w>j<C-w>_
nmap <C-k><C-k> <C-w>k<C-w>_

" copy the current line to the clipboard
nmap <Leader>Y "*yy
nmap <Leader>P "*p

" double tap the leader to switch to previous buffer
noremap <Leader><Leader> <C-^>

" move to the next buffer Buffers
:nnoremap <C-N> :bnext<CR>
:nnoremap <C-P> :bprevious<CR>

"shortcut to open / close the quickfix window
nmap <Leader>c  :copen<CR>
nmap <Leader>cc :cclose<CR>

" map shortcut to resize the window split
nmap <C-,> <C-W>>
nmap <C-.> <C-W><

" Don't use Ex mode, use Q for formatting
map Q gq
map Q gqap

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" shortcut to edit .vimrc, save and reload
autocmd BufWritePost .vimrc source %
cmap <Leader>vrc :tabedit $MYVIMRC

" use ESC to clear the search hilight
nnoremap <ESC> :noh<CR><ESC>

" Ctrl = to add empty line UNDER the line in normal mode
" Ctrl + to add empry line ABOVE the line in normal mode
nnoremap = :silent put=''<CR>
nnoremap - :silent put!=''<CR>

" select while switching to the opposite bracket
noremap % v%
"}}}1


" ***********************
" AutoCommand
" ***********************
"{{{1
" Only do this part when compiled with support for autocommands.
if has("autocmd")


  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
    au!

    "open .todo file using vim-todo file  type
    au BufRead,BufNewFile *.todo set ft=todo

    " make and python use real tabs
    au FileType make set noexpandtab
    au FileType python set noexpandtab

    " set fold type in vim files
    au FileType vim set foldmethod=marker

    au FileType cpp set tabstop=2 shiftwidth=2 softtabstop=2

    " css folding enable
    au FileType css set foldmethod=marker foldmarker={,}
    " assing the same syntax highliting for less
    au BufRead,BufNewFile *.less set ft=css

    " Thorfile, Rakefile and Gemfile are Ruby
    au BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru} set ft=ruby

    " md, markdown, and mk are markdown and define buffer-local preview
    au BufRead,BufNewFile *.txt :Goyo | call s:setupWrapping()
    au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

    " enable Limelight when use Goyo
    au! User GoyoEnter Limelight
    au! User GoyoLeave Limelight!

    au FileType javascript call JavaScriptFold()
    au BufNewFile,BufRead *.jsx set filetype=jsx.javascript

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    " Also don't do it when the mark is in the first line, that is the default
    " position when opening a file.
    au BufReadPost *
          \ if line("'\"") > 1 && line("'\"") <= line("$") |
          \   exe "normal! g`\"" |
          \ endif

  augroup END

else

  set autoindent      " always set autoindenting on

endif " has("autocmd")
"}}}


"***************************
" Helper Functions
"***************************
"{{{1
" Function to PRESERE the cursor position and search results
function! Preserve(command)
  " Prepare : save last search, and cursor position
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Run the COMMAND
  execute a:command
  " Bring everything back
  let @/=_s
  call cursor(l,c)
endfunction

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
        \ | wincmd p | diffthis
endif

function! s:setupWrapping()
  set wrap
  set wm=2
  set textwidth=82
  setlocal spell spelllang=en_us
  set sps=best,10
endfunction

function! s:setupMarkup()
  call s:setupWrapping()
  map <buffer> <Leader>p :Mm<CR>
endfunction
"}}}

