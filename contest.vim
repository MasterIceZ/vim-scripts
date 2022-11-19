set nowrap
set tabstop=4
set sw=4

syntax enable

nnoremap <F8> :w <CR> :!g++ -Wall -std=c++11 -O2 -D_DEBUG % -o %:t:r -Wl,stack,268435456 <CR>
nnoremap <S-F8> :w <CR> :!g++ -Wall -std=c++11 -O2 % -o %:t:r <CR>
nnoremap <F10>  :!\Users\User\Desktop\gh\vim-scripts\contest\example_run %:t:r < input.txt <CR>
nnoremap <S-F10> :!%:t:r <CR>
nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
