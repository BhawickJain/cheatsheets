## kill a process
killall code                           # kill all processes of VSCode

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
ls -d $PWD/*						   # list all files with the filepath 
ls -dR $PWD/* | grep -i "pattern"      # find file name pattern with filepath

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

... | sort -r                         # sort in reverse order
man awk
## diplay tasks from every file in a tabular format
grep ' : ' *.md | awk 'BEGIN{FS=":"; OFS="%%%"}{print $1, ": " $3}' | column -s '%%%' -t


echo "a very long string" | less -S   # unwrap long lines
                                      # use left-right arrow keys to pan

# curl
## download file with custom file name
curl https://raw.githubusercontent.com/vercel/next-learn/master/basics/basics-final/public/images/profile.jpg -o profile.jpg # download a file and name
## download with original file name
curl -O https://raw.githubusercontent.com/vercel/next-learn/master/basics/basics-final/public/images/profile.jpg

# case-insensitive globbing
# more on globbing:
# https://www.linuxjournal.com/content/bash-extended-globbing

# for zsh
unsetopt CASE_GLOB  # make * case insensitive
# example usecase
ls *dump* # matches dump, Dump, DUMP, DuMp

setopt extendedglob # extended globbing 
# example usecase
ls (#1)*dump* # matches dump, Dump, DUMP, DuMp

## check if directory is represent
## does not work for symbolic links
if [ ! -d "$DIRECTORY" ]; then
  echo "$DIRECTORY does not exist."
fi

## what linux distro
cat /etc/*-release
cat /proc/version
cat uname -a
cat /etc/issue

