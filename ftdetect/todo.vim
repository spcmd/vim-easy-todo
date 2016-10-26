" ========================================================= "
" Vim Easy TODO                                             "
" Vim filetype detect: *.todo                               "
" Created by: spcmd                                         "
" Website: http://spcmd.github.io                           "
"          https://github.com/spcmd                         "
"          https://gist.github.com/spcmd                    "
" ========================================================= "

au BufWinEnter,BufRead,BufNewFile *.todo set filetype=todo
au BufWinEnter,BufRead,BufNewFile *.TODO set filetype=todo
