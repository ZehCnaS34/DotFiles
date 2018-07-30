" __/\\\\\\\\\\\\\\\__/\\\\\\\\\\\__/\\\\____________/\\\\_
"  _\////////////\\\__\/////\\\///__\/\\\\\\________/\\\\\\_
"   ___________/\\\/_______\/\\\_____\/\\\//\\\____/\\\//\\\_
"    _________/\\\/_________\/\\\_____\/\\\\///\\\/\\\/_\/\\\_
"     _______/\\\/___________\/\\\_____\/\\\__\///\\\/___\/\\\_
"      _____/\\\/_____________\/\\\_____\/\\\____\///_____\/\\\_
"       ___/\\\/_______________\/\\\_____\/\\\_____________\/\\\_
"        __/\\\\\\\\\\\\\\\__/\\\\\\\\\\\_\/\\\_____________\/\\\_
"         _\///////////////__\///////////__\///______________\///__
"
" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'AndrewRadev/linediff.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'airblade/vim-gitgutter'
Plug 'benmills/vimux' "Interact with tmux from vim
Plug 'bhurlow/vim-parinfer', { 'for': 'clojure' }
Plug 'digitaltoad/vim-pug'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go'
Plug 'fenetikm/falcon'
Plug 'flazz/vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
Plug 'jpalardy/vim-slime', { 'for': 'clojure' }
Plug 'jparise/vim-graphql', { 'for': ['javascript', 'graphql'] }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kana/vim-textobj-user'
Plug 'kchmck/vim-coffee-script'
Plug 'kshenoy/vim-signature'
Plug 'leafgarland/typescript-vim'
Plug 'lilydjwg/colorizer'
Plug 'majutsushi/tagbar'
Plug 'mfukar/robotframework-vim'
Plug 'mhinz/vim-startify' "startify
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'rking/ag.vim'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'sjl/gundo.vim'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tyewang/vimux-jest-test'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'wincent/ferret'
Plug 'wincent/loupe'
call plug#end()            " required

" Syntax
filetype plugin indent on
syntax enable
set background=dark
set termguicolors
colorscheme falcon

set t_Co=256
if &term =~ '256color'
  set t_ut=
endif


" Setters
set nocompatible
if has('gui_running')
  set guifont=IBM\ Plex\ Mono\ 14
endif
set dir=~/.tmp
set expandtab
set wildmenu
set guioptions-=T guioptions-=m
set laststatus=2 cmdheight=2 ruler nu rnu ignorecase hlsearch magic noeb t_vb= tm=500
set regexpengine=1
set shiftwidth=2 tabstop=2 softtabstop=2 smartindent
set mouse=a
set so=7
set swapfile
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*.png,*.jpg
set showtabline=1
set lbr

set list                              " show whitespace
set listchars=nbsp:⦸                  " CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
set listchars+=tab:▷┅                 " WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7)
" + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
set listchars+=extends:»              " RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
set listchars+=precedes:«             " LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
set listchars+=trail:•                " BULLET (U+2022, UTF-8: E2 80 A2)

"folding stuff
set fillchars=vert:┃
set fillchars+=fold:
set foldmethod=indent "indent method
set foldlevelstart=99 "start unfolded

set synmaxcol=800                     " Don't try to highlight lines longer than 800 characters.


" lets
let mapleader=","
let g:jsx_ext_required = 0

" Autocommands
autocmd BufNewFile,BufReadPost Procfile set filetype=ruby

" Maps
nmap <c-\> :NERDTreeToggle<cr>
nmap <m-\> :Tagbar<cr>

nnore <Leader><Leader> :Commands<cr>
nnore <C-p> :Files<space>.<cr>
nnore <Leader>pf :Files<cr>
nnore <Leader>pb :Buffers<cr>
nnore <Leader>pl :Lines<cr>
nnore <Leader>pt :Tags<cr>
nnore <Leader>pc :Commands<cr>
nnore <Leader>pa :Ag<space>


" Tab tweaks
nnore <Leader>tH :tabfirst<cr>
nnore <Leader>tL :tablast<cr>
nnore <Leader>td :tabclose<cr>
nnore <Leader>tD :tabclose!<cr>
nnore <Leader>th :tabp<cr>
nnore <Leader>tl :tabn<cr>
nnore <Leader>tr :tabc<cr>
nnore <Leader>tt :tabe<cr>

" Vim
nnore <Leader>Tc :call<space>CleanTemps()<cr>

" view maps
nnore <Leader>vm :mkview<cr>
nnore <Leader>vl :loadv<cr>

" buffers
nnoremap <Leader>bd :bdel<cr>
nnoremap <Leader>bl :buffers<cr>

" Configuration bindings
nnore <Leader>Cr :so~/.config/nvim/init.vim<cr>
nnore <Leader>Ce :e<space>~/.config/nvim/init.vim<cr>

" cpanel
nnore <Leader>cc :cclose<cr>

" Fugitive Bindings
nnore <Leader>gs :Gstatus<cr>
nnore <Leader>gp :Gpush<cr>
nnore <Leader>gf :Gpull<cr>
nnore <Leader>gc :Commits<cr>

" window
nnoremap <Leader>wd <C-w>c
nnoremap <Leader>Wd :close!<cr>
nnoremap <Leader>wh <C-w>h
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wl <C-w>l
nnoremap <Leader>ws <C-w>s
nnoremap <Leader>wv <C-w>v
nnoremap <Leader>ww <C-w>z
nnoremap <Leader>w= <C-w>=

nnore <Leader>Tb :Tagbar<cr>

" Lista
nnoremap <Leader>/ :Lines<cr>

" Quiting/Restarting
nnoremap <Leader>qq :q<cr>
nnoremap <Leader>qQ :qall<cr>
nnoremap ,m :Neomake<cr>

nnore [s :call <SID>SynStack()<CR>

set cursorline

" Folding
nore z[ va[zf
nore z{ va{zf
nore z( va(zf

" functions
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

function! g:CleanTemps()
  execute "!" . "rm -rf ~/.tmp/*.swp"
endfunction


let vimDir = '$HOME/.vim'
if has('persistent_undo')
  let myUndoDir = expand(vimDir . '/undodir')
  call system('mkdir ' . myUndoDir)
  let &undodir = myUndoDir
  set undofile
end

noremap <Leader>rl :w<Bar>execute 'silent !tmux send-keys -t bottom C-r'<Bar>redraw!<C-M>

function! ShowSpaces(...)
  let @/='\v(\s+$)|( +\ze\t)'
  let oldhlsearch=&hlsearch
  if !a:0
    let &hlsearch=!&hlsearch
  else
    let &hlsearch=a:1
  end
  return oldhlsearch
endfunction

function! TrimSpaces() range
  let oldhlsearch=ShowSpaces(1)
  execute a:firstline.",".a:lastline."substitute ///ge"
  let &hlsearch=oldhlsearch
endfunction

command -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()
nnoremap <F8>     :ShowSpaces 1<CR>
nnoremap <C-F8>   m`:TrimSpaces<CR>``
vnoremap <C-F8>   :TrimSpaces<CR>

let g:slime_target = "tmux"

let $FZF_DEFAULT_COMMAND="ag -g ''"

au BufWrite <buffer> call TrimSpaces()

let g:airline#extensions#tabline#enabled = 1
