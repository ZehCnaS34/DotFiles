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
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'airblade/vim-gitgutter'
Plug 'benekastah/neomake'
Plug 'bhurlow/vim-parinfer'
Plug 'digitaltoad/vim-pug'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go'
Plug 'flazz/vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
Plug 'jpalardy/vim-slime'
Plug 'jparise/vim-graphql'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'
Plug 'majutsushi/tagbar'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'rking/ag.vim'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
<<<<<<< HEAD
Plug 'sirver/UltiSnips'
=======
>>>>>>> aa5afe57c9b194408f5969e277efd42ee0b949b1
Plug 'sjl/gundo.vim'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
<<<<<<< HEAD
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
=======
>>>>>>> aa5afe57c9b194408f5969e277efd42ee0b949b1
call plug#end()            " required

" Syntax
filetype plugin indent on
syntax enable
<<<<<<< HEAD
set background=light
" colorscheme gruvbox
colorscheme desert
" colorscheme zenburn
=======
set background=dark
colorscheme gruvbox
>>>>>>> aa5afe57c9b194408f5969e277efd42ee0b949b1
set t_Co=256
if &term =~ '256color'
  set t_ut=
endif


" Setters
set nocompatible
if has('gui_running')
<<<<<<< HEAD
  set guifont=IBM\ Plex\ Mono\ 14
=======
  set guifont=Fira\ Mono\ 13
>>>>>>> aa5afe57c9b194408f5969e277efd42ee0b949b1
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

" lets
let mapleader=" "
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
<<<<<<< HEAD
=======
nnoremap <Leader>Wd :close!<cr>
>>>>>>> aa5afe57c9b194408f5969e277efd42ee0b949b1
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
<<<<<<< HEAD
  execute a:firstline.",".a:lastline."substitute ///ge"
=======
  execute a:firstline.",".a:lastline."substitute ///gec"
>>>>>>> aa5afe57c9b194408f5969e277efd42ee0b949b1
  let &hlsearch=oldhlsearch
endfunction

command -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()
nnoremap <F8>     :ShowSpaces 1<CR>
nnoremap <C-F8>   m`:TrimSpaces<CR>``
vnoremap <C-F8>   :TrimSpaces<CR>

let g:slime_target = "tmux"
<<<<<<< HEAD

let $FZF_DEFAULT_COMMAND="ag -g ''"

au BufWrite <buffer> call TrimSpaces()

let g:airline#extensions#tabline#enabled = 1
=======
>>>>>>> aa5afe57c9b194408f5969e277efd42ee0b949b1
