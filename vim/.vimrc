" color column
set cc=100
set nu "rnu
" Indentation w/o hard tabs
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set nowrap
set autoindent
set cursorline
set hlsearch
set mouse=a

filetype plugin on
syntax on

" autoinstall vimplug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" VimPlug plugins -- vimawesome.com
call plug#begin()
  " Vim defaults
  Plug 'tpope/vim-sensible'
  " Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'kchmck/vim-coffee-script'
  Plug 'tpope/vim-endwise'
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-airline/vim-airline'
  " Alternate between relative and absolute numbers
  " Plug 'myusuf3/numbers.vim'
  " Plug 'vim-scripts/dbext.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'neoclide/coc.nvim', {'branch': 'release' }
  Plug 'kana/vim-textobj-user'
  Plug 'nelstrom/vim-textobj-rubyblock'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-haml'
  " Themes
  Plug 'artanikin/vim-synthwave84'
  Plug 'nanotech/jellybeans.vim'
  Plug 'Rigellute/shades-of-purple.vim'
  Plug 'joshdick/onedark.vim'
  Plug 'sonph/onehalf'
  Plug 'dracula/vim'

call plug#end()

" enable 24bit color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" colorscheme synthwave84
" colorscheme onedark
" colorscheme shades_of_purple
" colorscheme jellybeans
colorscheme dracula

" Remappings
nnoremap <leader>p :GFiles<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>F :Locate ~<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>a :Ag<CR>
" nmap o o<esc>
" nmap O O<esc>

" Remove trailing whitespace on save from certain files
autocmd FileType ruby,javascript,html,haml,coffee,php autocmd BufWritePre <buffer> %s/\s\+$//e

" abbreviations
ab bb byebug
ab bp binding.pry

