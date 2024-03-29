call plug#begin('~/.local/share/nvim/plugged')
 Plug 'jiangmiao/auto-pairs'
 Plug 'tpope/vim-commentary' 
call plug#end()

set number
set relativenumber 
syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set encoding=utf-8
filetype plugin indent on
" source ~/.config/nvim/coc.vim

autocmd BufNewFile *.cpp 0r ~/main/temp.cpp

" Set C++ file type
autocmd BufNewFile,BufRead *.cpp set filetype=cpp

" Compile and run C++ program in subshell
function! CompileAndRun()
  let fileName = expand('%')
  if fileName =~ '\.cpp$'
    let exeName = substitute(fileName, '\.cpp$', '', '')
    execute 'w | !g++ -std=c++11 -Wall -Wextra -Wpedantic -O2 -o ' . exeName . ' ' . fileName
    if v:shell_error == 0
      let cmd = "alacritty --hold -e bash -c './" . exeName . "'"
      echo 
      call system(cmd)
      redraw!
    endif
  else
    echo 'Not a C++ file'
  endif
endfunction
 
" Map keys to compile and run current file
map <F5> :call CompileAndRun()<CR>



function! Compile()
  let fileName = expand('%')
  if fileName =~ '\.cpp$'
    let exeName = substitute(fileName, '\.cpp$', '', '')
    execute 'w | !g++ -std=c++11 -Wall -Wextra -Wpedantic -O2 -o ' . exeName . ' ' . fileName
  else
    echo 'Not a C++ file'
  endif
endfunction

map <F9> :call Compile()<CR>
