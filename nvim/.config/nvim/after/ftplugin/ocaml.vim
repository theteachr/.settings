set tabstop=2
set shiftwidth=2

nnoremap <silent> <leader>i :vsplit term://utop -init %<CR>
vnoremap <silent> <leader>m !ocamlformat --impl -<CR>
vnoremap <silent> <leader>n !ocamlformat --intf -<CR>
