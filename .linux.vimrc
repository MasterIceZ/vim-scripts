"let g:dir_path = '~\Desktop\gh\vim-scripts'
"let g:dir_path = '~/vim-scripts'
let g:dir_path = '~/Documents/vim-scripts'

" using gVim for Windows
exe 'source ' . g:dir_path . '/linux_example/vimrc_example.vim'
" source ~\Desktop\gh\vim-scripts\folding.vim

" for programming contest
let contest = 1
let name = expand('%:t:r')
let splited_name = split(name, '_')
let extend = expand('%:e')
let contest_condition = (contest || (tolower(splited_name[0])) == 'contest' && len(splited_name) >= 2) && (tolower(extend) == 'cc' || tolower(extend) == 'cpp' )
if contest_condition
"	autocmd GUIEnter * vsp input.txt
"	autocmd GUIEnter * vertical resize 30
"	autocmd GUIEnter * wincmd p
"	vertical resize 30
"	autocmd VimEnter * wincmd p
"	au FileType cpp source ~\Desktop\gh\vim-scripts\contest.vim
	autocmd VimEnter * vsp input.txt
	autocmd VimEnter * vertical resize 30
	exe 'source ' . g:dir_path . '/linux_contest.vim'
endif

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

" au GUIEnter * simalt ~x
if !contest_condition
	au GUIENTER * tabnew
	au GUIENTER * tabn
endif

set nowrap
set nobackup
set noundofile
set noswapfile

" Vim Plug
call plug#begin('~/autoload/plugged')

" colorScheme
" Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jsit/toast.vim'
Plug 'mhartington/oceanic-next'
Plug 'alessandroyorba/despacio'

" editor
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'bfrg/vim-cpp-modern'
Plug 'prettier/vim-prettier', {'do': 'yarn install' }
Plug 'preservim/nerdtree'
Plug 'leafgarland/typescript-vim'
" Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'luochen1990/rainbow'
Plug 'nathanaelkane/vim-indent-guides'

call plug#end()

" Colorsheme
syntax enable
set background=dark
" colorscheme despacio
" colorscheme gruvbox
" colorscheme toast
" colorscheme solarized
colorscheme OceanicNext

set encoding=UTF-8
let g:rainbow_active = 1

" Configure by file type
let s:lang_path = g:dir_path . '/lang'

au Filetype c exec 'source ' . s:lang_path . '/c.vim'
if !contest_condition
	au Filetype cpp exec 'source ' . s:lang_path . '/cpp.vim'
endif
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

" Indent Guides
nnoremap <C-i> :IndentGuidesToggle <CR>
