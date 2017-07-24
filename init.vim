
" {{{ Plugins

" Required:
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state(expand('~/.config/nvim/dein'))
  call dein#begin(expand('~/.config/nvim/dein'), expand('~/.config/nvim/init.vim'))

  " Let dein manage dein
  " Required:
  call dein#add(expand('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim'))

  " Autocomplete
  call dein#add('Shougo/deoplete.nvim')                                " Dark powered asynchronous completion framework for neovim<Paste>
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
  call dein#add('Raimondi/delimitMate', {'on_map': {'i': ['(', '[', '{', '"']}})                                " Automatic closing of quotes, parenthesis, brackets
  call dein#add('terryma/vim-multiple-cursors', {'on_map': {'n': ['<C-n>', '<C-p>'], 'x': '<C-n>'}})            " True Sublime Text style multiple selections
  " Appearance
  call dein#add('vim-airline/vim-airline')                                                        " Lean & mean status/tabline for vim that's light as air
  call dein#add('vim-airline/vim-airline-themes', {'depends': 'vim-airline'})                     " Airline themes collection
  call dein#add('ryanoasis/vim-devicons')                                                         " Adds file type glyphs/icons to popular Vim plugins
  call dein#add('Yggdroot/indentLine', {'on_cmd': ':IndentLinesToggle'})                          " Display the indention levels with thin vertical lines
  call dein#add('tomasr/molokai')                                                                 " Molokai vim theme
  call dein#add('mhinz/vim-signify')                                                              " Uses the sign column to indicate added, modified and removed lines
  " Developing
  call dein#add('majutsushi/tagbar', {'on_cmd': ':TagbarToggle'})                                 " A class outline viewer for Vim
  call dein#add('tpope/vim-fugitive')                                                             " Git wrapper
  call dein#add('scrooloose/syntastic', {'on_ft': ['python', 'javascript']})                      " Syntax checking
  call dein#add('Valloric/MatchTagAlways', {'on_ft': ['xml', 'html', 'htmldjango', 'htmljinja']}) " Always highlights the enclosing html/xml tags
  call dein#add('mattn/emmet-vim', {'on_ft': ['xml', 'html', 'css']})                             " Provides support for expanding abbreviations similar to emmet.
  "call dein#add('chrisbra/Colorizer', {'on_map': ':ColorToggle'})                                 " Color hex codes and color names
  " Other
  call dein#add('mbbill/undotree', {'on_cmd': ':UndotreeToggle'})  " Undo tree manager
  call dein#add('qpkorr/vim-renamer', {'on_cmd': ':Renamer'})      " Rename files in the vim buffer
  call dein#add('eugen0329/vim-esearch', {'on_cmd': '<leader>ff'}) " Performing project-wide async search and replace
  call dein#add('christoomey/vim-tmux-navigator')                  " Seamlessly navigation between vim and tmux splits
  call dein#add('jeetsukumaran/vim-buffergator')                   " List, select and switch between buffers
  call dein#add('ctrlpvim/ctrlp.vim')                              " Fuzzy file/buffer/mru/tag finder

  " Required:
  call dein#end()
  call dein#save_state()
endif
" }}}

" {{{ Common

set enc=utf-8         " UTF-8 as default encoding
"set nobackup         " Disable backup files
"set nowritebackup    " Only in case you don't want a backup file while editing
"set noswapfile       " Disable swap files
set undofile          " Enable undo file
set expandtab         " Expand tabs into spaces
set shiftwidth=0      " Number of spaces to use for each step of (auto)indent. When zero the 'ts' value will be used.
set softtabstop=4     " Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>
set tabstop=4         " Number of spaces that a <Tab> in the file counts for
set foldmethod=marker " Folding method
set hidden            " Switch between buffers without saving
set autoindent        " Enable auto indent
set autochdir         " Change directory where opened file from
set number            " Line numbers are good
set relativenumber    " Show numbers relative to current line
set showcmd           " Show incomplete cmds down the bottom
set noshowmode        " Hide showmode because of the powerline plugin
set cursorline        " Highlight current line

let g:dein#enable_notification = 1            " Use notification
let g:dein#notification_time = 3              

let g:deoplete#enable_at_startup = 1          " Enable deoplete autocompletion
let g:deoplete#file#enable_buffer_path = 1    " Autocomplete files relative to current buffer
let g:neosnippet#enable_completed_snippet = 1 " Enable neosnippets

let g:ctrlp_working_path_mode = 'a'           " Start search from directory of the current file, unless it is a subdirectory of the cwd
" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site|bower_components)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg|pyc)$',
\}

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1               " Automatically fill the list of errors detected
let g:syntastic_auto_loc_list = 1                          " Automatically open and close window with errors
let g:syntastic_check_on_open = 1                          " Run syntax check when buffer is loaded
let g:syntastic_check_on_wq = 0                            " Skip syntax check before quitting
let g:syntastic_python_checkers = ['flake8 --ignore=E501'] " Ignore some errors
" }}}

" {{{ Interface

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " Switch cursor shape between block and vertical in INSERT mode
set fillchars=vert:│,fold:-         " Pseudo symbols for borders
set completeopt-=preview            " Do not show preview window at autocomplete
set scrolloff=15                    " Number of lines from edge to start scrolling

colorscheme molokai                 " Set colorcheme
let g:molokai_original = 1          " Use original variant
let g:rehash256 = 1                 " Enable experimental 256 color support
"set background=light               " Enable light colored variant

let g:indentLine_enabled = 0        " Disable indent lines by default
let g:indentLine_char = '│'         " Indent Char

" Airline settings
let g:airline_theme = 'molokai'
let g:airline_powerline_fonts = 1                          " Enable powerline fonts
let g:airline#extensions#tabline#enabled = 1               " Smarter tab line
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'unique_tail' " Only show filename in tab

" Style for non printable symbols
if has('multi_byte')
  set listchars=tab:▸\ ,eol:¬ " TextMate style
else
  set listchars=tab:»\ ,trail:·,eol:¶,extends:>,precedes:<,nbsp:_ " Fallback
endif

" Mark text in lines above 80 symbols in Ruby/Python/js/C/C++ files
augroup vimrc_autocmds
    autocmd!
    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType ruby,python,javascript,c,cpp match Excess /\%80v.*/
    autocmd FileType ruby,python,javascript,c,cpp set nowrap
augroup END
" }}}

" {{{ Key bindings

" Override mapleader
let mapleader = '`'

" Show/Hide tab's and eol's
nmap <leader>l :set list!<cr>

" Show/Hide indent lines
nmap <leader>t :IndentLinesToggle<cr>

" Toggle paste mode 
nmap <leader>p :set paste!<cr>

" Easy save
map <F2> :w<cr>
imap <F2> <esc>:w<cr>i

" Toggle tagbar window
let g:tagbar_autofocus = 0
map <F4> :TagbarToggle<cr>
imap <F4> <esc>:TagbarToggle<cr>i

" Toggle undo tree window
nmap <F5> :UndotreeToggle<cr>

" Toogle Colorizer
"nmap <F8> :ColorToggle<cr>

" Navigation in autocomplete window
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Smart indent blocks with < & >
vmap < <gv
vmap > >gv

" Supress buffergator defaults
let g:buffergator_suppress_keymaps = 1

" View the entire list of buffers open
nmap gl :BuffergatorToggle<cr>

" Go to the previous buffer open
nmap gk :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nmap gj :BuffergatorMruCycleNext<cr>

" Open CtrlP file finder
nmap go :CtrlP<cr>

" Open CtrlP recent files finder
nmap gp :CtrlPMRU<cr>

" Select tabs by Airline
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

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

"Smart navigation between tmux and vim
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
" }}}
