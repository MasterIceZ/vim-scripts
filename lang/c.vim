set nowrap
set tabstop=4
set sw=4
nnoremap <F8> :w <CR> :!g++ -Wall -std=c++11 -O2 -D_DEBUG % -o %:t:r <CR>
nnoremap <F9> :w <CR> :!g++ -Wall -std=c++11 -O2 % -o %:t:r <CR>
nnoremap <F10> :!%:t:r <CR>
nnoremap <F11> :!del %:t:r.exe <CR>
