" Tmux Navigator Plugin
source ~/.config/nvim/dein/repos/github.com/christoomey/vim-tmux-navigator/plugin/tmux_navigator.vim

" Escape sequences Plugin
source ~/.config/nvim/dein/repos/github.com/fedorenchik/AnsiEsc/plugin/AnsiEscPlugin.vim
source ~/.config/nvim/dein/repos/github.com/fedorenchik/AnsiEsc/plugin/cecutil.vim
source ~/.config/nvim/dein/repos/github.com/fedorenchik/AnsiEsc/autoload/AnsiEsc.vim

" Based on vim script "to work like less" by Bram Moolenaar <Bram@vim.org>
set laststatus=0
set scrolloff=0
set mouse-=a

set so=0
set hlsearch
set incsearch
nohlsearch

" Don't remember file names and positions
set shada=
set nows

" Used after each command: put cursor at end and display position
if &wrap
  noremap <SID>L L0:redraw<CR>:file<CR>
  au VimEnter * normal! L0
else
  noremap <SID>L Lg0:redraw<CR>:file<CR>
  au VimEnter * normal! Lg0
endif

" Give help
noremap h :call <SID>Help()<CR>
map H h
fun! s:Help()
  echo "<Space>   One page forward          b         One page backward"
  echo "d         Half a page forward       u         Half a page backward"
  echo "j         One line forward          k         One line backward"
  echo "G         End of file               g         Start of file"
  echo "N%        percentage in file"
  echo "\n"
  echo "/pattern  Search for pattern        ?pattern  Search backward for pattern"
  echo "n         next pattern match        N         Previous pattern match"
  echo "\n"
  echo "q         Quit                      v         Edit file"
  let i = input("Hit Enter to continue")
endfun

" Redraw
noremap <script> r <C-L><SID>L
noremap <script> <C-R> <C-L><SID>L
noremap <script> R <C-L><SID>L

" Start of file
noremap <script> g gg<SID>L
map < g
map <Esc>< g
map <Home> g
map <kHome> g

" End of file
noremap <script> G G<SID>L
map > G
map <Esc>> G
map <End> G
map <kEnd> G

nmap <space> <PageDown><C-G>
nmap b <C-B><C-G>
nmap q :q!<CR>

" Scroll one line backward
noremap <script> k <C-Y><SID>L
map y k
map <C-Y> k
map <C-P> k
map <C-K> k
map <Up> k

" Scroll one line forward
noremap <script> <CR> <C-E><SID>L
map <C-N> <CR>
map e <CR>
map <C-E> <CR>
map j <CR>
map <C-J> <CR>
map <Down> <CR>

" Go to percentage
noremap <script> % %<SID>L
map p %

" Search
noremap <script> / H$:call <SID>Forward()<CR>/
if &wrap
  noremap <script> ? H0:call <SID>Backward()<CR>?
else
  noremap <script> ? Hg0:call <SID>Backward()<CR>?
endif

fun! s:Forward()
  " Searching forward
  noremap <script> n H$nzt<SID>L
  if &wrap
    noremap <script> N H0Nzt<SID>L
  else
    noremap <script> N Hg0Nzt<SID>L
  endif
  cnoremap <silent> <script> <CR> <CR>:cunmap <lt>CR><CR>zt<SID>L
endfun

fun! s:Backward()
  " Searching backward
  if &wrap
    noremap <script> n H0nzt<SID>L
  else
    noremap <script> n Hg0nzt<SID>L
  endif
  noremap <script> N H$Nzt<SID>L
  cnoremap <silent> <script> <CR> <CR>:cunmap <lt>CR><CR>zt<SID>L
endfun

call s:Forward()
cunmap <CR>

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
