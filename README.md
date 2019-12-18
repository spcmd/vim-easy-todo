# Vim Easy TODO

Vim Easy TODO is a simple & easy to use 'To-do list' plugin
for - of course - Vim.

For those who need only some basic functionality when creating To-do lists.

![](http://spcmd.github.io/img/vim-easy-todo.png)

## Installation

Use [Pathogen](https://github.com/tpope/vim-pathogen) or [Vundle](https://github.com/gmarik/Vundle.vim) and clone this repo to your bundle directory:

`cd ~/.vim/bundle`

`git clone https://github.com/spcmd/vim-easy-todo.git`

## Configuration

This plugin does **not** set key mappings by default!
There are 3 basic commands you need to map in your .vimrc file:

**for example:**

`nmap <leader>d :TodoDone<CR>`<br>
`nmap <leader>u :TodoUndone<CR>`<br>
`nmap <leader>x :TodoCancel<CR>`<br>

The commands are pretty self-explanatory, but for the record:

`TodoDone`       Marks the current task (line) as done<br>
`TodoUndone`     Sets the current task to default state<br>
`TodoCancel`     Marks the current task as cancelled

## Usage

1. Create a new buffer and save it with the extension `todo` (e.g. _mylist.todo_). The automatic syntax highlighting activates on files only with `.todo` extension.
2. Set the list title by enclosing it with brackets. For example:<br>

    `[My new list]`

3. Below the list title, create your list, starting every task with a dash (`-`) and a `<space>`. Then write your tasks after them. For example:<br>

    `[My new list]`<br>
    `- This is my first task`<br>
    `- This is my second task`<br>
    `- This is my third task`

4. Now you can mark every task (line) as **DONE** or as **CANCELLED** (or undone) with your mapped keys. Or you can use the commands (listed above) without key mappings, if you like.

**Note**: A status marker gets inserted both for **DONE** and **CANCELLED** states _(see screenshot above!)_. **Do not delete this marker!** This is a unicode character (`˄`), and it should be working fine. If not, try to set utf-8 in your .vimrc `set encoding=utf-8`

**Note2**: The _Checkmark_ and the _x mark _(for cancelled) are also unicode characters and they should be working fine _(see screenshot above!)_.


## Customization

You can customize _Vim Easy TODO_ with some basic options. The following values are the _default_ values. If you want to change them, put the variables into your .vimrc and change their values.

##### STATUS TEXT

Show the task status at the end of the line.
It appears when the task is **DONE** or **CANCELLED**.
It also shows the date and time when the task was marked as **DONE** or **CANCELLED**. If you want to disable it, set the value to `false`, or leave it blank (`=""`)

**Note**: Setting the value to `false` (or blank) will **not** delete the _previous_ status texts from the list! So, if they already exist, you need to delete them manually, if you want to.

`" Show status text`<br>
`let g:easy_todo_status_text="true"`

##### SYNTAX HIGHLIGHT

You can set the highlight color for the _list title_, the _done mark_, the _cancelled mark_, and the _status text_. There are variables for both gui and terminal versions.


`" List title color`<br>
`let g:easy_todo_list_title_color_cterm=215`<br>
`let g:easy_todo_list_title_color_gui='#ffaf5f'`

`" Status text color`<br>
`let g:easy_todo_status_text_color_cterm=240`<br>
`let g:easy_todo_status_text_color_gui='#585858'`

`" Done checkmark color`<br>
`let g:easy_todo_done_checkmark_color_cterm=46`<br>
`let g:easy_todo_done_checkmark_color_gui='#00ff00'`

`" Cancelled (x) mark color`<br>
`let g:easy_todo_cancelled_x_mark_color_cterm=9`<br>
`let g:easy_todo_cancelled_x_mark_color_gui='#ff0000'`

## Help file

You can read the help file in Vim with the usual help command:

`:help easy-todo`

## License

GNU GPLv3

### Donation

Humbly accepting your kind donation

[![paypal donate](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=HCPYH3LWZZR9Y
)
