# count number of lines
# count number of files
ls * | wc -l

ls -1laho # one line, mark directories, human readable
# copy
echo 'hello' | pbcopy
# see also pbpaste

# save current directory in variable
declare varname=$(pwd)
## evaluates pwd then assigns


# make file
touch [filepath]
echo "hello world" > [filepath]
echo "append this to" >> [filepath]
echo -e "\nadd new line" >> [filepath] # forced new line

# ls
ls -la

# grep
grep -i "case insensitive sEaRCH"
