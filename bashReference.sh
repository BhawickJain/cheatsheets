## wc                                  # perform word count
ls * | wc -l                           # count number of files
echo 'hello' | pbcopy                  # copy
pbpaste > clipboardToWrite.txt


declare varname=$(pwd)                 # save pwd result in variable
                                       ## evaluates pwd then assigns

mkdir -p folderA/folderB               # make folderB and folderA if needed
touch folderA/newFile.c                # create empty file
echo "hello world" > newFile.c         # create or overwrite with file
echo "append this to" >> newFile.c     # append new line to file
echo -e "\nadd new line" >> newFile.c  # forced new line

ls                                     # list files
ls -la                                 # list files include hidden files
ls -l                                  # list files in long format
ls <regex-pattern>                     # list files match pattern
ls -1laho                              # one line, human readable
ls -lap1                               # one line, mark directories

# grep
grep -i "case insensitive sEaRCH"

# shasum
shasum -a 256 <filename>               # create SHA256 checksum for file
shasum -a 256 <filename> > check.txt   # create SHA256 checksum for file
shasum -c check.txt                    # check if checksum matches file
## <filename>: OK
## or
## <filename: FAILED
## shasum: WARNING: 1 computed checksum did NOT match

## check.txt format
## <CHECKSUM><SPACE><SPACE><filename>

## performing a checksum on a file
## cd to the target file
## create a check.txt file
## place author's checksum for the file
## run shasum -c check.txt

man awk
## diplay tasks from every file in a tabular format
grep ' : ' *.md | awk 'BEGIN{FS=":"; OFS="%%%"}{print $1, ": " $3}' | column -s '%%%' -t


echo "a very long string" | less -S   # unwrap long lines
                                      # use left-right arrow keys to pan
