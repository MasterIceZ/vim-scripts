vsplit
e input.txt

set nowrap
set tabstop=4
set sw=4

syntax enable
vertical resize 30

nnoremap <F8> :w <CR> :!g++ -Wall -std=c++11 -O2 -D_DEBUG % -o %:t:r <CR>
nnoremap <F10> :!%:t:r < input.txt <CR>
nnoremap <S-F10> :!%:t:r <CR>
