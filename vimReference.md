# vim

```vim 
vim --version

f,[char] takes cursor to the next [char]
shift+f,[char], takes to the last [char]
```


## highlight column number

```vim 
set colorcolum=72
set colorcolum& "unset

"modern way
set cc=80
set cc=
```

## virtual editing

very useful when creating text tables or coding changes

```vim
set ve=all " turn on virtual editing
set ve=    " unset virtiaul editing
```


## fold

```vim
" .vimrc
let g:markdown_folding = 1

" init.lua
vim.opt.markdown_folding = 1

" usage
zo	" open current fold
zO	" recursively open current fold
zc	" close current fold
zC	" recursively close current fold
za	" toggle current fold
zA	" recursively open/close current fold
zm	" reduce foldlevel by one
zM	" close all folds
zr	" increase foldlevel by one
zR	" open all folds

```

## substitute

```vim

:[range]s/[regex-match]/[substitute]/[options]

" subsitute globally along line
:s/foo/bar/g

" substitute first occurance
:s/foo/bar

" substitute line number 5-10 on all lines
:5,10s/foo/bar/g

" substitute line number 5-EOF on all lines
:5,$s/foo/bar/g

" substite across the files
:%s/food/bar/g

" substitute across line but ask confirmation for each
:s/foo/bar/gc

" move cursor to another split screen
ctrl+w " then [hjkl] to move left-bottom-up-or-right

```

## window split

```vim
" split
:split
:vsplit (vertical split)

" split resize
" starting with the window you want to resize
[number] ctrl+w [-+] " to move by number of pixels
ctrl+w = " to equal the window sizes:w

" vsplit resize
[number] ctrl+w [<>] "

```

```vim

" find next char
f [char]

" find previous char
shift+f [char]

" move to the next find
" useful for moving across sentences
" after you used f[char]
;

```

## search

```vim
/\c[regex-pattern]  " case insensitive search
/\C[regex-pattern]  " case sensitive search
:set ic             " set search case insensitive
:set noic           " set search case sensitive
:set ic!            " toggle case-sensitive search
?                   " trigger search
/                   " trigger search

" search to next word currently under cursor
*

" search to previous word currently under cursor

```

## change case

```vim
" in visual mode
" select text
U " for all UPPERCASE
u " for all lowercase

" in normal and visual mode
~ " to switch case of character

```

## Spell Check
```vim
]s           " next spelling mistake
[s           " previous spelling mistake
z=           " suggest correct spelling
zg           " set as good spelling
zw           " set as wrong spelling
:set spell   " turn on spell check
:set nospell " turn off spell check
```

```vim
.vimrc
set spell spelllang=en_us " language in .vimrc
```

## Plug
```vim
" with vim open
:PlugInstall

" delete / comment out plugs in vimrc or init.vim
:PlugClean
```

## macros
```vim
q            " to start listening for a macro shortcut
w            " or any key, macro now recording on w key
q            " to stop recording
@w           " or any key recorded, to run the moves
@@           " to repeat last macro
```
