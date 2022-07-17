nnoremap <silent> <leader>r :w<CR>:!./%:r<CR>
nnoremap <silent> <leader>c :w<CR>:!clang -o %:r %<CR>
nnoremap <silent> <leader><leader> :w<CR>:!clang -o %:r % && ./%:r<CR>
