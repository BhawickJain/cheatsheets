# vim

```vim
vim --version

f,[char] takes cursor to the next [char]
shift+f,[char], takes to the last [char]

# highlight column number
set colorcolum=72
set colorcolum& #unset

fold

zM fold everything recursively
zO fold open everything recursively
zA fold entire block currenty in

substitute

# subsitute globally along line
:s/foo/bar/g

# substitute first occurance
:s/foo/bar

# substitute line number 5-10 on all lines
:5,10s/foo/bar/g

# substitute line number 5-EOF on all lines
:5,$s/foo/bar/g

# substite across the files
:$s/food/bar/g

# substitute across line but ask confirmation for each
:s/foo/bar/gc

# move cursor to another split screen
ctrl+w then [hjkl] to move left-bottom-up-or-right

# split
:split
:vsplit (vertical split)

# split resize
# starting with the window you want to resize
[number] ctrl+w [-+] # to move by number of pixels
ctrl+w = # to equal the window sizes:w

# vsplit resize
[number] ctrl+w [<>] #

# find next char
f [char]

# find previous char
shift+f [char]

# move to the next find
# useful for moving across sentences
# after you used f[char]
;

# go to next word currently under cursor
*

# go to previous word currently under cursor
#
```