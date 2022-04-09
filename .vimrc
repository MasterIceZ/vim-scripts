" using gVim for Windows
source ~\Desktop\gh\vim-scripts\example\vimrc_example.vim
" source ~\Desktop\gh\vim-scripts\folding.vim

" for programming contest
let contest = 0
let name = expand('%:t:r')
let splited_name = split(name, '_')
if contest || (tolower(splited_name[0]) == 'contest' && len(splited_name) >= 2)
	au FileType cpp source ~\Desktop\gh\vim-scripts\contest.vim
endif

" set gfn=Ubuntu\ Mono:h18
set gfn=SF_Mono:h18
set nu rnu

autocmd InsertEnter * set nornu
autocmd InsertLeave * set rnu
set belloff=all

inoremap {<CR> {<CR>}<ESC>O

set si
set ts=4
set sw=4

au GUIEnter * simalt ~x
if !contest
	au GUIENTER * tabnew
	au GUIENTER * tabn
endif

set nobackup
set noundofile
set noswapfile

" Vim Plug
call plug#begin('~/autoload/plugged')
" Plug 'iCyMind/NeoSolarized'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bfrg/vim-cpp-modern'
Plug 'prettier/vim-prettier', {'do': 'yarn install' }
Plug 'preservim/nerdtree'
Plug 'leafgarland/typescript-vim'
Plug 'wakatime/vim-wakatime'
" Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jsit/toast.vim'
Plug 'morhetz/gruvbox'
Plug 'alessandroyorba/despacio'
Plug 'ryanoasis/vim-devicons'
" Plug 'SirVer/ultisnips'
Plug 'mhinz/vim-startify'
Plug 'luochen1990/rainbow'
call plug#end()

" Colorsheme
syntax enable
set background=dark
" colorscheme despacio
colorscheme gruvbox
" colorscheme toast
" colorscheme solarized

set encoding=UTF-8
let g:rainbow_active = 1

" Configure by file type
au Filetype c source ~\Desktop\gh\vim-scripts\lang\c.vim
if contest == 0
	au Filetype cpp source ~\Desktop\gh\vim-scripts\lang\cpp.vim
endif
au Filetype javascript source ~\Desktop\gh\vim-scripts\lang\javascript.vim
au Filetype go source ~\Desktop\gh\vim-scripts\lang\go.vim
au Filetype python source ~\Desktop\gh\vim-scripts\lang\python.vim
au Filetype rust source ~\Desktop\gh\vim-scripts\lang\rust.vim 
au Filetype haskell source ~\Desktop\gh\vim-scripts\lang\haskell.vim
au Filetype typescript source ~\Desktop\gh\vim-scripts\lang\typescript.vim
au Filetype java source ~\Desktop\gh\vim-scripts\lang\java.vim

" Nerd Tree
" autocmd VimEnter * NERDTree
nnoremap <leader>n :NERDTreeFocus <CR>
nnoremap <C-t> :NERDTreeToggle <CR>
nnoremap <C-f> :NERDTreeFind <CR>
