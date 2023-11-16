```
find . # lists files and folders recursively in cwd
find . -type d # list only directories
find . -type f # list only files
find Hello # find files and folder with 'Hello' 
find . -type d -name '*double-page*' # find directory with name double-page
find . -type d -iname '*double-page*' # find directory with name double-page
find . -type d -iname '*book*' # find directory case insensitive name
find . -type f -mmin -10 # find files modified in the less than 10 minutes
find . -type f -mmin +10 # find files modified in the less than 10 minutes
find . -type f -mmin +1 -mmin -5 # find files modified more 1 min ago but less than 5 minutes ago
find . -name "hello" | vim # pipe results to vim and use gf to open them
find . -type f -mtime -20 # less than 20 days ago
find . -type f -atime -2 # files accessed less than 2 days ago
find . -type f -ctime -2 # files changed less than 2 days ago
find . -size +5M # files over 5 megabytes (k for kilobytes, G for gigabytes)
find . -type f -size +5M -atime -5 # files over 5mb accessed less than 5 days ago
find . -empty
find . -empty -maxdepth 1 # only search current directory
```

