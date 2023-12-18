echo $0                                # what shell am i using?

## IP addresses
ipconfig getifaddr en0                 # for macOS, default local wireless
hostname -I                            # for debian/raspberryOS

## managing processes
echo $!                                # pid of your last command
<some-process> & echo '$!' > <path>    # pattern to save pid at exec
kill -9 <PID>                          # kill a particular process
                                       # make sure you own that process
killall code                           # kill all processes of VSCode

## managing ports                      
lsof -i:<PORT>                         # find a process using a port

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


## colors in bash ANSI
# Check RGB colors available
echo -e "$COLORTERM" # ok if 'truecolor' or '24bit'
# RGB colors
echo -e '\e[48;2;200;100;50mHello\e[0m'
echo -e '\e[48;2;200;50;100mHello\e[0m'
echo -e '\e[48;2;0;175;173mDLR\e[0m'
echo -e '\e[48;2;0;175;173m DLR \e[0m'
echo -e '\e[5m\e[48;2;0;175;173m DLR \e[0m'
echo -e '\e[3m\e[48;2;0;175;173m DLR \e[0m'
echo -e '\e[6m\e[48;2;0;175;173m DLR \e[0m'
echo -e '\e[7m\e[48;2;0;175;173m DLR \e[0m'
echo -e '\e[1m\e[48;2;0;175;173m DLR \e[0m'
echo -e '\e[38;2;0;221;120m $ \e[0m'

