Vim-surround
------------

NORMAL        | |
--------------|--
`cs`          | ChangeSurrounding from/to
`cs"<html>`   | `""` => `<html></html>`
`cst"`        | ChangeSurroundingTags. For revert previous.
`ds"`         | DeleteSurrounding
`ysiw"`       | YourSurrounding. iw is a text object.
`ySiw"`       | Same as above, but on its own line
`cs"{`        | to add braces with space.  Use `}` for no space
`yssb`, `yss` | YieldStringSurrounging. For wrap entire string

VISUAL    | |
----------|--
`S<html>` | Wrap visual selection with `<html></html>`

TComment
--------

NORMAL       | |
-------------|--
`gc{motion}` | Toggle comments
`gcc`        | Toggle comemnt for the current line
`g<{motion}` | Explicitly uncomment
`g<b`        | Uncomment region as block
`g>b`        | Comment region as block
`<leader>__` | Toggle comment
`<leader>_p` | in inner paragraph
`<leader>_b` | comment as block

Tabularize
----------

`:Tabularize /{sep}`

Vim-exchange
------------

NORMAL       | |
-------------|--
`cx{motion}` | Exchange operator
`cxiw`       | Exchange word, can use `.` the second time
`cxc`        | Clear any motion pending for exchange 

VISUAL | |
-------|--
`X`    | Exchange operator

_Note: the {motion} used in the first and second use of cx don't have to be the same._

Vim-multiple-cursors
--------------------

NORMAL / VISUAL               | |
------------------------------|--
**VSelection**`{motion}<c-n>` | Example: viw`<c-n>`..
`<c-n>`                       | Add virtual cursor to current word/selection
`<c-p>`                       | Remove current cursor and go back to the previous
`<c-x>`                       | Remove current and skip to the next
`:MultipleCursorsFind`        | Accepts a range and a pattern

Emmet-vim
---------

INSERT                  | |
------------------------|--
`<c-y>`                 | Leader
`<c-y>,`                | Expand abbreviation
`<c-y>n`                | Next edit point
`<c-y>k`                | Remove a tag
`<c-y>j`                | Split/join tag from/to short form
`<c-y>/`                | Toggle comment
`<c-y>a`                | Make an `a` anchor
`ul>li*3<c-y>,`         | Add `ul` and three `li`
`ul>li#menu$*3<c-y>,`   | Add `ul` and three li with menu1,menu2,menu3 id's
`html:5<c-y>,`          | Create html5 template

VISUAL   | |
---------|--
`<c-y>m` | Merge selected lines
`<c-y>,` | Wrap abbreviation around selected lines


UndoTree
--------

`F5 (Toggle Undotree)`

LEGEND  | |
--------|--
`>seq<` | Current position
`{seq}` | Next change that will be restored by `<c-r>`
`[seq]` | last change and where further changes will be added

Vim-esearch
-----------

NORMAL                           | |
---------------------------------|--
`<leader>ff`                     | Insert search pattern
`s`, `v`, `t`                    | Open file under the cursor in split/vsplit/tab
`S`, `V`, `T`                    | Open file under the cursor silently
`R`                              | Reload search results
`<c-o><c-s>`                     | Toggle case sensitive search
`<c-o><c-r>`                     | Toggle regex/literal search
`<c-o><c-w>`                     | Toggle Toggle whole word match
`:{range}ESubstitute/from/to/gc` | Searh and Replace

CtrlP
-----

NORMAL | |
-------|--
`go`   | Find file mode
`gp`   | Most recent use mode

CTRLP                 | |
----------------------|--
`<f5>`                | Purge the cache for the current directory
`<c-f>`, `<c-b>`      | Cycle between modes
`<c-d>`               | Filename only search
`<c-j>, <c-k>`        | Naviagte results
`<c-t>, <c-v>, <c-x>` | Open in new tab, split
`<c-n>, <c-p>`        | Navigate prompt's history
`<c-y>`               | Create new file and its parent dirs
`<c-z>`               | Mark multiple files and <c-o> to open them

Misc
----

NORMAL                | |
----------------------|--
`<leader>q`           | Quit
`<leader>c`           | Close buffer
`<leader>l`           | Toggle non printables
`<leader>t`           | Toggle indent lines
`<leader>p`           | Toggle paste mode
`<leader>n`           | Toggle line numbers
`<leader>space`       | Toggle highlight search results
`<leader>m`           | Jump to pair tag
`<f2>`                | Save buffer
`<f4>`                | Toggle tagbar
`<f9>`                | ROT13 Panic button
`H`,`L`               | Goto start/end of line
`<m-h><m-l>`          | Move cursor left/right
`<m-H><m-L>`          | Goto start/end of line
`gl`                  | Toogle Buffergator
`gj`,`gk`             | Switch to next/prev buffer
`_{md,hd,jt,js,pd,d}` | Easy filetype switching
