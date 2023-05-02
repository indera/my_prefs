" Never forget this
set mouse=

" https://medium.com/@yanglyu5201/neovim-setup-for-golang-programming-68ebf59336d9
" store the plugins in plugged dir

call plug#begin('~/.config/nvim/plugged')

" https://github.com/morhetz/gruvbox
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'

" Lang support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'elixir-editors/vim-elixir'

" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim
" React syntax highlighting and indenting, supports typescript tsx
"
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
" Plug 'yuezk/vim-js'

Plug 'David-Kunz/jester'
" https://github.com/nvim-treesitter/nvim-treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" debugger
Plug 'mfussenegger/nvim-dap'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'numToStr/Comment.nvim'

"!!!  https://farazdagi.com/posts/2015-01-10-vim-as-golang-ide/
" Plug 'jiangmiao/auto-pairs'


" Python https://realpython.com/vim-and-python-a-match-made-in-heaven/
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" https://github.com/neoclide/coc.nvim
" :CocInstall coc-json coc-tsserver
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" let g:deoplete#enable_at_startup = 1

" select the color scheme
" wget https://raw.githubusercontent.com/indera/molokai/master/colors/molokai.vim -o ~/.config/nvim/colors/molokai.vim
" wget https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim -o ~/.config/nvim/colors/monokai.vim
try
    colorscheme molokai
    " colorscheme gruvbox
    " colorscheme monokai

    " https://github.com/numToStr/Comment.nvim
    lua require('Comment').setup()
catch
endtry

" let g:flake8_pyflake_marker=''     " disable PyFlakes warnings
" let g:flake8_naming_marker=''      " disable naming warnings

" let g:airline_solarized_bg='dark'

" let g:AutoPairsFlyMode = 1
" let g:AutoPairsShortcutBackInsert = '<M-b>'

set nu
set laststatus=2

set noswapfile
set undofile
set undodir=$HOME/.vim/undo

set encoding=utf-8
set incsearch
set hlsearch
set nowrapscan
set ignorecase 

filetype plugin indent on
" set mouse=a
set mouse-=a

set autoindent
set smartindent

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
set showmode 
"set smartindent
set splitbelow
set splitright
set showmatch " Blink back to closing bracket (using % key)
" How many tenths of a second to blink when matching brackets
set mat=2

"Don't redraw while executing macros (good performance config)
set lazyredraw
" For regular expressions turn magic on
set magic


nmap <F1> :echo<CR>
imap <F1> <C-o>:echo<CR>

nnoremap <F2> ddkPk<CR>
nnoremap <F3> ddjPk<CR>
nnoremap <F6> :set number! <CR>
" nnoremap <F7> :TlistToggle <CR>

" https://vim.fandom.com/wiki/Alternative_tab_navigation
" https://vi.stackexchange.com/questions/31340/navigate-between-current-and-previous-tab-or-split
nnoremap <space> <C-w><C-w>k<CR>
nnoremap <S-space> <C-w><C-p>k<CR>

" CTRL-U in insert mode deletes a lot.	Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Go settings
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
autocmd filetype go nnoremap <F4> :w <bar> exec '!go run '.shellescape('%')<CR>
autocmd filetype go nnoremap <c-c> :w <bar> exec '!go run '.shellescape('%')<CR>

" Python
autocmd filetype python nnoremap <F4> :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype python nnoremap <F5> :w <bar> exec '!python3  -m unittest '.shellescape('%')<CR>
autocmd filetype python nnoremap <F8> :w <bar> exec '!pylint '.shellescape('%')<CR>



" ==================== Fugitive ====================
" nnoremap <leader>ga :Git add %:p<CR><CR>
" nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gs :Gstatus<CR>
vnoremap <leader>gb :Gblame<CR>


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

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func!DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.go :call DeleteTrailingWS()


" GoTo code navigation
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
