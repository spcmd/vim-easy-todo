" ========================================================= "
" Vim Easy TODO                                             "
" Vim syntax file: *.todo                                   "
" Created by: spcmd                                         "
" Website: http://spcmd.github.io                           "
"          https://github.com/spcmd                         "
"          https://gist.github.com/spcmd                    "
" ========================================================= "

if exists("b:current_syntax")
  finish
endif

if !exists("g:easy_todo_list_title_color_cterm")
  let g:easy_todo_list_title_color_cterm=215
endif
if !exists("g:easy_todo_list_title_color_gui")
  let g:easy_todo_list_title_color_gui='#ffaf5f'
endif
execute 'highlight TODO_List_title cterm=bold gui=bold guifg=' . g:easy_todo_list_title_color_gui . ' ctermfg=' . g:easy_todo_list_title_color_cterm


if !exists("g:easy_todo_done_checkmark_color_cterm")
  let g:easy_todo_done_checkmark_color_cterm=46
endif
if !exists("g:easy_todo_done_checkmark_color_gui")
  let g:easy_todo_done_checkmark_color_gui='#00ff00'
endif
execute 'highlight TODO_Done_checkmark guifg=' . g:easy_todo_done_checkmark_color_gui . ' ctermfg=' . g:easy_todo_done_checkmark_color_cterm


if !exists("g:easy_todo_status_text_color_cterm")
  let g:easy_todo_status_text_color_cterm=240
endif
if !exists("g:easy_todo_status_text_color_gui")
  let g:easy_todo_status_text_color_gui='#585858'
endif
execute 'highlight TODO_Status_text guifg=' . g:easy_todo_status_text_color_gui . ' ctermfg=' . g:easy_todo_status_text_color_cterm


if !exists("g:easy_todo_cancelled_x_mark_color_cterm")
  let g:easy_todo_cancelled_x_mark_color_cterm=9
endif
if !exists("g:easy_todo_cancelled_x_mark_color_gui")
  let g:easy_todo_cancelled_x_mark_color_gui='#ff0000'
endif
execute 'highlight TODO_Cancelled_x_mark guifg=' . g:easy_todo_cancelled_x_mark_color_gui . ' ctermfg=' . g:easy_todo_cancelled_x_mark_color_cterm

:syntax match TODO_List_title /\[.*.\]/
:syntax match TODO_Done_checkmark /✓/
:syntax match TODO_Status_text /\.*˄DONE.*/
:syntax match TODO_Status_text /\.*˄CANCELLED.*/
:syntax match TODO_Cancelled_x_mark /✗/