set nowrap
set tabstop=4
set sw=4

au GUIEnter * :37 <CR> 

" input screen
vsp input.txt
vertical resize 30

autocmd VimEnter * wincmd p

syntax enable

nnoremap <F8> :w <CR> :!g++ -Wall -std=c++11 -O2 -D_DEBUG % -o %:t:r <CR>
nnoremap <F10> :!%:t:r < input.txt <CR>
nnoremap <S-F10> :!%:t:r <CR>
