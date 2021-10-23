source ~\Desktop\gh\vim-scripts\example\vimrc_example.vim

set gfn=Ubuntu\ Mono:h16
set nu rnu

autocmd InsertEnter * set nornu
autocmd InsertLeave * set rnu
set belloff=all

inoremap {<CR> {<CR>}<ESC>O

set si
set ts=4
set sw=4

au GUIEnter * simalt ~x
au GUIENTER * tabnew
au GUIENTER * tabn

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
call plug#end()

" Colorsheme
syntax enable
if has('gui_running')
	set background=light
else
	set background=dark
endif
colorscheme solarized
" colorscheme NeoSolarized

" Configure by file type
au Filetype cpp source ~\Desktop\gh\vim-scripts\cpp.vim
au Filetype javascript source ~\Desktop\gh\vim-scripts\javascript.vim
au Filetype go source ~\Desktop\gh\vim-scripts\go.vim

" Nerd Tree
" autocmd VimEnter * NERDTree
nnoremap <leader>n :NERDTreeFocus <CR>
nnoremap <C-t> :NERDTreeToggle <CR>
nnoremap <C-f> :NERDTreeFind <CR>


