"let g:dir_path = '~\Desktop\gh\vim-scripts'
"let g:dir_path = '~/vim-scripts'

" MAC MACHINE
let g:dir_path = '~/Documents/vim-scripts'

" using gVim for Windows
exe 'source ' . g:dir_path . '/linux_example/vimrc_example.vim'
" source ~\Desktop\gh\vim-scripts\folding.vim

" set gfn=Ubuntu\ Mono:h18
set gfn=SF_Mono:h18
" set guifont=SF_Mono:h18:W600:cANSI:qDRAFT
set nu rnu

autocmd InsertEnter * set nornu
autocmd InsertLeave * set rnu
set belloff=all

inoremap {<CR> {<CR>}<ESC>O

set si
set ts=4
set sw=4

set nowrap
set nobackup
set noundofile
set noswapfile

set termguicolors
syntax on
" set t_Co=256

" Vim Plug
call plug#begin('~/autoload/plugged')

" colorScheme
" Plug 'iCyMind/NeoSolarized'
" Plug 'morhetz/gruvbox'
" Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'jsit/toast.vim'
" Plug 'mhartington/oceanic-next'
" Plug 'alessandroyorba/despacio'
" Plug 'dikiaap/minimalist'
Plug 'ghifarit53/tokyonight-vim'

" editor
Plug 'junegunn/vim-easy-align'
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'bfrg/vim-cpp-modern'
Plug 'prettier/vim-prettier', {'do': 'yarn install' }
Plug 'preservim/nerdtree'
Plug 'leafgarland/typescript-vim'
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'luochen1990/rainbow'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'chakrit/vim-thai-keys'
Plug 'vimsence/vimsence'
Plug 'github/copilot.vim'

call plug#end()

" Colorsheme
syntax enable
set background=dark
" colorscheme despacio
" colorscheme gruvbox
" colorscheme toast
" colorscheme solarized
" colorscheme OceanicNext
" colorscheme minimalist

" TOKYO NIGHT SCHEME
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

set encoding=UTF-8
let g:rainbow_active = 1

" Configure by file type
let s:lang_path = g:dir_path . '/lang'

au Filetype c exec 'source ' . s:lang_path . '/c.vim'
au Filetype cpp exec 'source ' . s:lang_path . '/cpp.vim'
au Filetype javascript exec 'source ' . s:lang_path . '/javascript.vim'
au Filetype typescript exec 'source ' . s:lang_path . '/typescript.vim'
au Filetype go exec 'source ' . s:lang_path . '/go.vim'
au Filetype python exec 'source ' . s:lang_path . '/python.vim'
au Filetype haskell exec 'source ' . s:lang_path . '/haskell.vim'
au Filetype rust exec 'source ' . s:lang_path . '/rust.vim'
au Filetype java exec 'source ' . s:lang_path . '/java.vim'

" Nerd Tree
" autocmd VimEnter * NERDTree
nnoremap <leader>n :NERDTreeFocus <CR>
nnoremap <C-t> :NERDTreeToggle <CR>
nnoremap <C-f> :NERDTreeFind <CR>

" Tabs
nnoremap <C-l> :tabp <CR>
nnoremap <C-r> :tabn <CR>
nnoremap <C-n> :tabnew <CR>
nnoremap <C-w> :tabc <CR>

" Indent Guides
nnoremap <C-i> :IndentGuidesToggle <CR>

" WARP!
noremap <TAB> %
