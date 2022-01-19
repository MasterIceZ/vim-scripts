set nowrap
set tabstop=4
set sw=4
nnoremap <F8> :w <CR> :!ghc % -o %:t:r <CR>
nnoremap <F10> :!%:t:r <CR>
nnoremap <F11> :!del %:t:r.exe <CR>
