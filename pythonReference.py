# python reference

# array indexing
start = 0
end = 2
stride = 1
arr = [1, 2, 4][start, end, stride]
## movement to next item can only happen along the array so empty 
## array is returned if you force python to circle back.
## you can select with negative index to indicate you don't know
## the final length of the array
