" Never forget this
set mouse=

" https://medium.com/@yanglyu5201/neovim-setup-for-golang-programming-68ebf59336d9
" store the plugins in plugged dir

call plug#begin('~/.config/nvim/plugged')

Plug 'dstein64/vim-startuptime'

" https://github.com/morhetz/gruvbox
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'

" crs snake_case
" crm MixedCase
" crc camelCase
" :'<,'>:g/.*/normal crc
Plug 'tpope/vim-abolish'

" quotes https://superuser.com/questions/782391/vim-enclose-in-quotes
" Word          ysiw)'      aa      => (aa)
" line          yss'        aa bb   => 'aa bb'
Plug 'tpope/vim-surround'

Plug 'preservim/nerdtree'

Plug 'kkvh/vim-docker-tools'

" https://sourcediving.com/better-fuzzy-finding-in-vim-2f1e8597b3b9
" Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf'
"https://github.com/junegunn/fzf.vim
" Example
"   :Rg [PATTERN]   rg search result (ALT-A to select all, ALT-D to deselect all)
" Plug 'junegunn/fzf.vim'

" plantUML
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'tyru/open-browser.vim'


" https://stackoverflow.com/questions/9212340/is-there-a-vim-plugin-for-previewing-markdown-files
" :help vim-instant-markdown-configuration
" let g:instant_markdown_autostart = 0
" let g:instant_markdown_slow = 1
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

" Linting
" https://medium.com/@jimeno0/eslint-and-prettier-in-vim-neovim-7e45f85cf8f9
" Plug 'w0rp/ale'

" show diffs inline
" Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'

" Elixir support
Plug 'elixir-editors/vim-elixir'


" golang support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-test/vim-test'


Plug 'editorconfig/editorconfig-vim'


" https://github.com/josa42/coc-go
" :CocInstall coc-go

" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'prabirshrestha/asyncomplete-gocode.vim'


" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim
" React syntax highlighting and indenting, supports typescript tsx
"
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
" Plug 'yuezk/vim-js'

Plug 'David-Kunz/jester'

" https://github.com/nvim-treesitter/nvim-treesitter
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" debugger
Plug 'mfussenegger/nvim-dap'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'numToStr/Comment.nvim'

Plug 'dracula/vim', { 'as': 'dracula' }

" Plug 'Raimondi/delimitMate' - closes ''

"!!!  https://farazdagi.com/posts/2015-01-10-vim-as-golang-ide/
" Plug 'jiangmiao/auto-pairs'


" Python https://realpython.com/vim-and-python-a-match-made-in-heaven/
Plug 'vim-syntastic/syntastic'

" Plug 'nvie/vim-flake8'
" Plug 'davidhalter/jedi-vim'

" Completion plugin - https://github.com/Shougo/ddc.vim
Plug 'Shougo/ddc.vim'
" Plug 'vim-denops/denops.vim' start a deno process every time vim is open???
" Plug 'vim-denops/deno-helloworld.vim'

" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'

" https://github.com/neoclide/coc.nvim
" :CocInstall coc-go coc-json coc-tsserver coc-eslint
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" :CocInstall coc-pyright
" :CocInstall coc-clangd
Plug 'fannheyward/coc-pyright'

" code to image file
" Plug 'krivahtoo/silicon.nvim', { 'do': './install.sh' }

" Plug 'tjdevries/colorbuddy.nvim'
" Plug 'svrana/neosolarized.nvim'
Plug 'Tsuzat/NeoSolarized.nvim', { 'branch': 'master' }

Plug 'jparise/vim-graphql'

call plug#end()


" !!! https://jogendra.dev/using-vim-for-go-development
au filetype go inoremap <buffer> . .<C-x><C-o>
let g:go_doc_window_popup_window = 1

" Python only?
" let g:jedi#popup_on_dot = 1

" https://medium.com/@ericclifford/neovim-item2-truecolor-awesome-70b975516849
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" pip3 install --user pynvim
" DENO?
" let g:deoplete#enable_at_startup = 1

let g:instant_markdown_autostart = 1

" Auto formatting and importing
" let g:go_fmt_autosave = 1
" let g:go_fmt_command = "goimports"


" select the color scheme
" wget https://raw.githubusercontent.com/indera/molokai/master/colors/molokai.vim -P ~/.config/nvim/colors/
" wget https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim -P ~/.config/nvim/colors/
try
    " colorscheme gruvbox
    " colorscheme molokai
    " colorscheme NeoSolarized
    " colorscheme drakula
    colorscheme monokai

    " https://github.com/numToStr/Comment.nvim
    " == NORMAL mode
    " `gcc` - Toggles the current line using linewise comment
    " `gbc` - Toggles the current line using blockwise comment
    " `[count]gcc` - Toggles the number of line given as a prefix-count using linewise
    " `[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
    " `gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
    " `gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment
    lua require('Comment').setup()

    " lua require('neosolarized').setup({
    "     comment_italics = true,
    "     background_set = false,
    " })
catch
endtry

" let g:flake8_pyflake_marker=''     " disable PyFlakes warnings
" let g:flake8_naming_marker=''      " disable naming warnings

" let g:airline_solarized_bg='dark'

" let g:AutoPairsFlyMode = 1
" let g:AutoPairsShortcutBackInsert = '<M-b>'

set noerrorbells                " No beeps
set nu                          " Line numbers
set backspace=indent,eol,start  " Makes backspace key more powerful.
" set showcmd                     " Show me what I'm typing

set noswapfile
set nobackup                    " Don't create annoying backup files
set nowritebackup
set undofile
set undodir=$HOME/.vim/undo

set encoding=utf-8
" set noshowmode                " We show the mode with airline or lightline
set nowrapscan
set wrap                        " wrap long lines
set incsearch
set hlsearch
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters

set ttyfast
" set ttyscroll=3               " noop on linux ?
set lazyredraw                  "Don't redraw while executing macros (good performance config)

" speed up syntax highlighting
set nocursorcolumn
set nocursorline

filetype plugin indent on

set mouse-=a

" Apply the indentation of the current line to the next line.
set autoindent
set smartindent
set complete-=i " if your program has lots of system includes and the completion results become polluted you can get rid of i
set smarttab

set expandtab
set expandtab " Expand Tabs (pressing Tab inserts spaces)
set tabstop=4 " Set Tab size
set shiftwidth=4 " Number of spaces to use for each step of (auto)indent
set softtabstop=4 " makes the spaces feel like real tabs; one backspace goes back X spaces :)
set backspace=indent,eol,start
retab
set scrolloff=3 " do not let the curser get too close to the edge
set laststatus=2 " laststatus: show status line? Yes, always!
" /Users/asura/setup/jessfraz_vimrc
" python indent
" autocmd BufNewFile,BufRead *.py setlocal tabstop=2 softtabstop=2 shiftwidth=2 textwidth=80 smarttab expandtab
autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 smarttab expandtab


" set clipboard+=unnamedplus
set splitbelow
set splitright
set showmatch " Blink back to closing bracket (using % key)
" How many tenths of a second to blink when matching brackets
set mat=2

" For regular expressions turn magic on
set magic

" nmap <F1> :echo<CR>
" imap <F1> <C-o>:echo<CR>

" Center the screen
nnoremap <F1> zz

nnoremap <F2> ddkPk<CR>
nnoremap <F3> ddjPk<CR>
nnoremap <F6> :set number! <CR>
" nnoremap <F7> :TlistToggle <CR>

nnoremap <F7> :set signcolumn=no<CR>

" https://vim.fandom.com/wiki/Alternative_tab_navigation
" https://vi.stackexchange.com/questions/31340/navigate-between-current-and-previous-tab-or-split
nnoremap <space> <C-w><C-w>k<CR>
nnoremap <S-space> <C-w><C-p>k<CR>

" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" nnoremap H gT
" nnoremap L gt

" Shortcuts for end and home.
map <s-right> <end>
map <s-left> <home>


" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Go settings
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
autocmd filetype go nnoremap <c-c> :w <bar> exec '!go run '.shellescape('%')<CR>
autocmd filetype go nnoremap <F4>  :w <bar> exec '!go run '.shellescape('%')<CR>
autocmd filetype go nnoremap <F5>  :w <bar> :GoBuild <CR>

" Python
autocmd filetype python nnoremap <c-c> :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype python nnoremap <F4>  :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype python nnoremap <F5>  :w <bar> exec '!python3  -m unittest '.shellescape('%')<CR>
autocmd filetype python nnoremap <F6>  :w <bar> exec '!pylint '.shellescape('%')<CR>

" This comes first, because we have mappings that depend on leader
" With a map leader it's possible to do extra key combinations
" i.e: <leader>w saves the current file
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>

" let g:which_key_map.w = 'save'

" ==================== Fugitive ====================
" nnoremap <leader>ga :Git add %:p<CR><CR>
" nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gs :Git status<CR>
nnoremap <leader>gb :Git blame<CR>

"==================== NerdTree ====================
" For toggling
nmap <C-n> :NERDTreeToggle<CR>
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>

let NERDTreeShowHidden=1

let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']

" Close nerdtree and vim on close file
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif



" ===== Must have restore position (go to last edit location) ===
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Delete trailing white space on save
func!DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.go :call DeleteTrailingWS()
autocmd BufWrite *.ts :call DeleteTrailingWS()
autocmd BufWrite *.md :call DeleteTrailingWS()
autocmd BufWrite *.vimrc :call DeleteTrailingWS()
autocmd BufWrite Makefile :call DeleteTrailingWS()

" trim white space
autocmd BufWritePre *Taskfile.yml :%s/\s\+$//ge

" disable the recording macro, drives me nuts.
map q <Nop>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" Do not show stupid q: window
map q: :q

" Sometimes this happens and I hate it (never use these for speed)
" map :Vs :vs
" map :Sp :sp

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %


augroup filetypedetect
  au BufNewFile,BufRead .nginx.conf*,nginx.conf* setf nginx
augroup END

au FileType nginx setlocal noet ts=4 sw=4 sts=4


" Python help
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" https://github.com/vim-syntastic/syntastic
let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_check_on_wq = 0

" ==================== --- ============================
" ==================== COC ============================
" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')


" Conflic on tab completion
" https://superuser.com/questions/1734914/neovim-coc-nvim-enter-key-doesnt-work-to-autocomplete
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" :CocInstall coc-pairs

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config

" navigate
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"


" https://github.com/junegunn/fzf/blob/master/README-VIM.md
" If installed using Homebrew on Apple Silicon
" set rtp+=/opt/homebrew/opt/fzf

" Edit vimr configuration file
nnoremap <Leader>ve :e $MYVIMRC<CR>
" Reload vimr configuration file
nnoremap <Leader>vr :source $MYVIMRC<CR>


" Speling iz gode.
noremap <leader>sc :setlocal spell! spelllang=en_us<cr>
inoremap <leader>sc <c-\><c-o>:setlocal spell! spelllang=en_us<cr>

" Reselect the deselected blocks in visual mode.
" vnoremap < <gv
" vnoremap > >gv

" SENTENCE DOUBLE-SPACING SHOULDN'T BE THE DEFAULT.
set nojoinspaces
