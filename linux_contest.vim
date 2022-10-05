set nowrap
set tabstop=4
set sw=4

syntax enable

nnoremap <F8> :w <CR> :!g++ -Wall -std=c++11 -O2 -D_DEBUG % -o %:t:r.exe <CR>
nnoremap <S-F8> :w <CR> :!g++ -Wall -std=c++11 -O2 % -o %:t:r <CR>
nnoremap <F10>  :!~/vim-scripts/linux_contest/example_run %:t:r < input.txt <CR>
nnoremap <S-F10> :!%:t:r <CR>
