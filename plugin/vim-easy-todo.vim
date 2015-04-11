" ========================================================= "
" Vim Easy TODO                                             "
" Created by: spcmd                                         "
" Website: http://spcmd.github.io                           "
"          https://github.com/spcmd                         "
"          https://gist.github.com/spcmd                    "
" ========================================================= "

if !exists("g:easy_todo_status_text")
  let g:easy_todo_status_text="true"
endif

command! TodoDone 
\ if expand("%:e") == 'todo'|
    \ exe "normal ^i✓ <ESC>lxx$"|
    \ if g:easy_todo_status_text == "true"|
        \ exe "normal A ˄DONE (<C-R>=strftime('%Y-%m-%d %a %H:%M:%S')<CR>)<ESC>"|
    \ endif|
\ else|
    \ echo "ERROR: You can\'t use TodoDone on a non-todo file!"|
\ endif

command! TodoCancel 
\ if expand("%:e") == 'todo'|
    \ exe "normal ^i✗ <ESC>lxx$"|
    \ if g:easy_todo_status_text == "true"|
        \ exe "normal A ˄CANCELLED (<C-R>=strftime('%Y-%m-%d %a %H:%M:%S')<CR>)<ESC>"|
    \ endif|
\ else|
    \ echo "ERROR: You can\'t use TodoCancel on a non-todo file!"|
\ endif

command! TodoUndone
\ if expand("%:e") == 'todo'|
    \ if g:easy_todo_status_text == "true"|
        \ exe "normal ^xi-<ESC>f˄Dx"|
    \ else|
        \ exe "normal ^xi-<ESC>$"|
    \ endif|
\ else|
    \ echo "You can\'t use TodoUndone on a non-todo file!"|
\ endif