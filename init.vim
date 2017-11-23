
" {{{ Plugins

" Override mapleader as early as possible
let mapleader = '`'

" Required:
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state(expand('~/.config/nvim/dein'))
  call dein#begin(expand('~/.config/nvim/dein'), expand('~/.config/nvim/init.vim'))

  " Let dein manage dein
  " Required:
  call dein#add(expand('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim'))

  " Autocomplete
  call dein#add('Shougo/deoplete.nvim')                                " Dark powered asynchronous completion framework for neovim
  call dein#add('Shougo/neosnippet.vim')                               " Snippets support to Vim.
  call dein#add('Shougo/neosnippet-snippets')                          " Snippets collection
  call dein#add('Shougo/neco-syntax')                                  " Syntax source for autocomplete engine
  call dein#add('wokalski/autocomplete-flow', {'on_ft': 'javascript'}) " PHP completion (flow source)
  call dein#add('zchee/deoplete-jedi', {'on_ft': 'python'})            " Python completion (jedi source)
  call dein#add('haya14busa/dein-command.vim')                         " Dein rich completion
  " Text formatting
  call dein#add('tpope/vim-repeat', {'on_map': '.'})                                                            " Needed by vim-surrond
  call dein#add('tpope/vim-surround', {'on_map': {'n': ['cs', 'ds', 'ys'], 'x': 'S'}, 'depends': 'vim-repeat'}) " Parentheses, brackets, quotes, XML tags, and more
  call dein#add('tomtom/tcomment_vim', {'on_map': 'gc', 'on_cmd': ':TComment'})                                 " Easy to use, file-type sensible comments
  call dein#add('godlygeek/tabular', {'on_cmd': ':Tabularize'})                                                 " Text filtering and alignment
  call dein#add('tommcdo/vim-exchange', {'on_map': {'n': 'cx', 'x': 'X'}})                                      " Easy text exchange operator for Vim.
  call dein#add('terryma/vim-multiple-cursors', {'on_map': {'n': ['<C-n>', '<C-p>'], 'x': '<C-n>'}})            " True Sublime Text style multiple selections
  call dein#add('Raimondi/delimitMate')                                                                         " Automatic closing of quotes, parenthesis, brackets
  " Appearance
  call dein#add('vim-airline/vim-airline')                                                        " Lean & mean status/tabline for vim that's light as air
  call dein#add('vim-airline/vim-airline-themes', {'depends': 'vim-airline'})                     " Airline themes collection
  call dein#add('ryanoasis/vim-devicons')                                                         " Adds file type glyphs/icons to popular Vim plugins
  call dein#add('Yggdroot/indentLine', {'on_cmd': ':IndentLinesToggle'})                          " Display the indention levels with thin vertical lines
  call dein#add('sjl/badwolf')                                                                    " Bad Wolf color scheme
  call dein#add('mhinz/vim-signify')                                                              " Uses the sign column to indicate added, modified and removed lines
  " Developing
  call dein#add('majutsushi/tagbar', {'on_cmd': ':TagbarToggle'})                                 " A class outline viewer for Vim
  call dein#add('tpope/vim-fugitive')                                                             " Git wrapper
  call dein#add('scrooloose/syntastic', {'on_ft': ['python', 'javascript', 'sh']})                " Syntax checking
  call dein#add('Valloric/MatchTagAlways', {'on_ft': ['xml', 'html', 'htmldjango', 'htmljinja']}) " Always highlights the enclosing html/xml tags
  call dein#add('mattn/emmet-vim', {'on_ft': ['xml', 'html', 'css']})                             " Provides support for expanding abbreviations similar to emmet.
  call dein#add('python-mode/python-mode', {'on_ft': ['python', 'django']})
  "call dein#add('chrisbra/Colorizer', {'on_map': ':ColorToggle'})                                 " Color hex codes and color names
  " Syntax
  call dein#add('evanmiller/nginx-vim-syntax')                                                    " Nginx
  " Other
  call dein#add('mbbill/undotree', {'on_cmd': ':UndotreeToggle'})  " Undo tree manager
  call dein#add('qpkorr/vim-renamer', {'on_cmd': ':Renamer'})      " Rename files in the vim buffer
  call dein#add('eugen0329/vim-esearch', {'on_map': '<leader>ff'}) " Performing project-wide async search and replace
  call dein#add('christoomey/vim-tmux-navigator')                  " Seamlessly navigation between vim and tmux splits
  call dein#add('jeetsukumaran/vim-buffergator')                   " List, select and switch between buffers
  call dein#add('ctrlpvim/ctrlp.vim')                              " Fuzzy file/buffer/mru/tag finder

  " Required:
  call dein#end()
  call dein#save_state()
endif
" }}}

" {{{ Common

"set nobackup            " Disable backup files
"set nowritebackup       " Only in case you don't want a backup file while editing
set autochdir            " Change directory where opened file from
set autoindent           " Enable auto indent
set completeopt-=preview " Do not show preview window at autocomplete
set cursorline           " Highlight current line
set enc=utf-8            " UTF-8 as default encoding
set expandtab            " Expand tabs into spaces
set foldmethod=marker    " Folding method
set hidden               " Switch between buffers without saving
set linebreak            " Do not break words when line wrapping
set mouse-=a             " Disable select with mouse in visual mode
set noshowmode           " Hide showmode because of the powerline plugin
set noswapfile           " Disable swap files
set number               " Line numbers are good
set relativenumber       " Show numbers relative to current line
set scrolloff=15         " Number of lines from edge to start scrolling
set shiftround           " Round indent to multiple of 'shiftwidth'
set shiftwidth=0         " Number of spaces to use for each step of (auto)indent. When zero the 'ts' value will be used.
set shortmess+=I         " Do not give the intro message when starting Vim 
set showcmd              " Show incomplete cmds down the bottom
set softtabstop=4        " Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>
set splitbelow           " Split the new window below the current one
set splitright           " Split the new window right of the current one
set synmaxcol=800        " Don't try to highlight lines longer than 800 characters
set tabstop=4            " Number of spaces that a <Tab> in the file counts for
set title                " Show title
set undofile             " Enable undo file

let g:dein#enable_notification = 1            " Use notification
let g:dein#notification_time = 3              " Notification timeout

let g:deoplete#enable_at_startup = 1          " Enable deoplete autocompletion
let g:deoplete#file#enable_buffer_path = 1    " Autocomplete files relative to current buffer
let g:neosnippet#enable_completed_snippet = 1 " Enable neosnippets

let g:ctrlp_working_path_mode = 'a'           " Start search from directory of the current file, unless it is a subdirectory of the cwd
" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site|bower_components)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg|pyc)$',
\}

" }}}

" {{{ Interface

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " Switch cursor shape between block and vertical in INSERT mode
set fillchars=vert:│,fold:-         " Pseudo symbols for borders

"set background=light                 " Enable light colored variant
let g:badwolf_html_link_underline = 0 " Turn off HTML link underlining
colorscheme badwolf                   " Set colorcheme

let g:indentLine_enabled = 0        " Disable indent lines by default
let g:indentLine_char = '│'         " Indent Char

" Airline settings
let g:airline_theme = 'badwolf'
let g:airline_powerline_fonts = 1                          " Enable powerline fonts
let g:airline#extensions#tabline#enabled = 1               " Smarter tab line
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'unique_tail' " Only show filename in tab

" Multiple cursors plugin highlight (see help :highlight and help :highlight-link)
highlight link multiple_cursors_cursor Cursor
highlight link multiple_cursors_visual Visual

" Style for non printable symbols
if has('multi_byte')
  set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮ " TextMate style
  set showbreak=↪
else
  set listchars=tab:»\ ,trail:·,eol:¶,extends:>,precedes:<,nbsp:_ " Fallback
  set showbreak=>\
endif

" }}}

" {{{ Key bindings

" Exit vim
nnoremap <leader>q :q!<cr>

" Close buffer
nnoremap <leader>c :bd<cr>

" Show/Hide tab's and eol's
nnoremap <leader>l :set list!<cr>

" Show/Hide indent lines
nnoremap <leader>t :IndentLinesToggle<cr>

" Toggle paste mode
nnoremap <leader>p :set paste!<cr>

" Toggle line numbers
nnoremap <leader>n :setlocal number! <BAR> :setlocal relativenumber!<cr>

" Easy save
nnoremap <F2> :w<cr>
inoremap <F2> <esc>:w<cr>i

" Toggle tagbar window
let g:tagbar_autofocus = 0
nnoremap <F4> :TagbarToggle<cr>
inoremap <F4> <esc>:TagbarToggle<cr>i

" Toggle undo tree window
nnoremap <F5> :UndotreeToggle<cr>

" Toogle Colorizer
"nmap <F8> :ColorToggle<cr>

" Panic Button
nnoremap <f9> mzggg?G`z

" Toggle highlight search results
nnoremap <leader><space> :set hlsearch!<cr>

" Navigation in autocomplete window
inoremap <expr> <c-j> ("\<Down>")
inoremap <expr> <c-k> ("\<Up>")

" Smart indent blocks with < & >
vnoremap < <gv
vnoremap > >gv

" Smart in line moving
nnoremap H ^
nnoremap L $
vnoremap L g_
inoremap <m-l> <c-o>l
inoremap <m-h> <c-o>h
inoremap <m-L> <c-o>A
inoremap <m-H> <c-o>I

" MatchTagAlways jump to pair tag
nnoremap <leader>m :MtaJumpToOtherTag<cr>

" Deoplete complete common string in candidates
inoremap <expr><C-l> deoplete#complete_common_string()

" Supress buffergator defaults
let g:buffergator_suppress_keymaps = 1

" View the entire list of buffers open
nnoremap gl :BuffergatorToggle<cr>

" Go to the previous buffer open
nnoremap gk :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nnoremap gj :BuffergatorMruCycleNext<cr>

" Open CtrlP file finder
nnoremap go :CtrlP<cr>

" Open CtrlP recent files finder
nnoremap gp :CtrlPMRU<cr>

" Turn off annoying mappings
nnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>

" Smart navigation between tmux and vim
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> ш i
nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
nnoremap <silent> <M-р> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-о> :TmuxNavigateDown<cr>
nnoremap <silent> <M-л> :TmuxNavigateUp<cr>
nnoremap <silent> <M-д> :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" Easy filetype switching
nnoremap _md :set ft=markdown<cr>
nnoremap _hd :set ft=htmldjango<cr>
nnoremap _jt :set ft=htmljinja<cr>
nnoremap _js :set ft=javascript<cr>
nnoremap _pd :set ft=python.django<cr>
nnoremap _d  :set ft=diff<cr>

" Expand snippets on <TAB> if snippets exists, otherwise do autocompletion
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\ : pumvisible() ? "\<C-n>" : "\<TAB>"
" If popup window is visible do autocompletion from back
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Fix for jumping over placeholders for neosnippet
smap <expr><TAB> neosnippet#jumpable() ?
\ "\<Plug>(neosnippet_jump)"
\: "\<TAB>"

" }}}

" {{{ Auto commands

" Mark extra whitespaces
highlight ExtraWhitespace ctermbg=124
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

autocmd FileType nginx set noexpandtab tabstop=8 softtabstop=0 shiftwidth=0 " Configure tabs for company style
autocmd FileType lua set noexpandtab tabstop=2 softtabstop=2 shiftwidth=2   " Configure tabs for company style
autocmd FileType vim let b:delimitMate_quotes="'"                           " Disable auto close \" quotes for vim files
autocmd FileType python set completeopt=longest,menuone,preview             " Autocomplete settings
autocmd FileType python let b:delimitMate_nesting_quotes = ['"', "'"]		" Python multiline quotes
autocmd FileType python set noautochdir 									" Do not confuse PymodeRope. It should find project cache.

" }}}

" {{{ Python-Mode

let g:pymode_doc = 1                                   " Turn on documentation
let g:pymode_doc_bind = 'K'                            " Bind keys to show documentation for current word

let g:pymode_syntax = 1                                " Turn on pymode syntax
let g:pymode_syntax_all = 0                            " Enable all python highlights
let g:pymode_syntax_builtin_objs = 1                   " Highlight builtin objects (True, False, ...)
let g:pymode_syntax_highlight_self = 1                 " Highlight 'self' keyword

let g:pymode_lint = 1                                  " Turn on code checking
let g:pymode_lint_ignore = 'E501'                      " Ignore some errors
let g:pymode_lint_on_write = 1                         " Check code on every save

let g:pymode_breakpoint = 0                            " I do not use python debuggers. Worth to try?
let g:pymode_folding = 1                               " Python mode folding
let g:pymode_run = 0                                   " Turn off run code script
let g:pymode_virtualenv = 0                            " Automatic virtualenv detection

let g:pymode_rope = 1                                  " Enable rope script
let g:pymode_rope_lookup_project = 0                   " Do not search project cache in parent directories
let g:pymode_rope_regenerate_on_write = 1              " Regenerate project cache on every save
let g:pymode_rope_completion = 0                       " Rope completion plugin
let g:pymode_rope_autoimport = 0                       " Auto import control
let g:pymode_rope_change_signature_bind = '<leader>ra' " Change function arguments
let g:pymode_rope_rename_bind = '<leader>rr'           " Keymap for rename method/function/class/variables under cursor
let g:pymode_rope_rename_module_bind = '<leader>rR'    " Rename a current module/package
let g:pymode_rope_goto_definition_bind = '<leader>rd'  " Move to definition
let g:pymode_rope_organize_imports_bind = '<leader>ro' " Organize/Sort import according to PEP8. Drop unused.
let g:pymode_rope_extract_method_bind = '<leader>rm'   " Generate method from selected lines

" }}}

" {{{ Syntastic

let g:syntastic_always_populate_loc_list = 1           " Automatically fill the list of errors detected
let g:syntastic_auto_loc_list = 1                      " Automatically open and close window with errors
let g:syntastic_check_on_open = 1                      " Run syntax check when buffer is loaded
let g:syntastic_check_on_wq = 0                        " Skip syntax check before quitting
let g:syntastic_python_checkers = ['flake8']           " flake8
let g:syntastic_python_flake8_args = ['--ignore=E501'] " Ignore some errors
let g:syntastic_mode_map = {
    \ 'mode': 'active',
    \ 'active_filetypes': ['php'],
    \ 'passive_filetypes': ['python'] }                " Enable/Disable for filetypes

" }}}
