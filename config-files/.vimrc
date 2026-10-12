syntax on
set tabstop=4
map <F4> : set nu!<BAR>set nonu?<CR>
set enc=utf8
set ai

function! Formatonsave()
  let l:formatdiff = 1
  py3f </usr/share/vim/addons/syntax>/clang-format.py
endfunction
autocmd BufWritePre *.h,*.hpp,*.c,*.cc,*.cpp call Formatonsave()

