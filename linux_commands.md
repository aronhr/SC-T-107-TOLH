# Linux commands
## Basics

#### Echo string
```console
notandi@skel:~$ echo <<string>>
```

#### print contents of a directory
```console
notandi@skel:~$ ls
```

#### go to another directory
```console
notandi@skel:~$ cd <<directory>>
```

#### print working directory
```console
notandi@skel:~$ pwd
```

#### print the contents of a file to the screen
```console
notandi@skel:~$ cat <<filename>>
```

#### print first few lines of a file
```console
notandi@skel:~$ head <<filename>>
```

#### prints last 10 lines
```console
notandi@skel:~$ tail <<filename>>
```

#### Make folder
```console
notandi@skel:~$ mkdir <<filename>>
```

#### Make file
```console
notandi@skel:~$ touch <<filename>>
```

#### Copy file
```console
notandi@skel:~$ cp <<filename>> <<destination>>
```

#### Copy many files (Example: file1.txt file2.txt file3.txt file4.txt)
```console
notandi@skel:~$ cp <<filename{1..4}.txt>> <<destination>>
```

#### Copy folder
```console
notandi@skel:~$ cp -R <<filename>> <<destination>>
```

#### Rename file
```console
notandi@skel:~$ mv <<old filename>> <<new filename>>
```

#### Delete file
```console
notandi@skel:~$ rm <<filename>>
```

#### Delete folder (!!WARNING!!)
```console
notandi@skel:~$ rm -dr <<folder>>
```

#### Count lines in file
```console
notandi@skel:~$ wc -l <<filename>>
24349 apache.log
```

#### Count lines in file and export to new file
```console
notandi@skel:~$ wc -l <<filename>> > <<new filename>>
24349 apache.log
```

#### Select specific lines that contains specific word in file
```console
notandi@skel:~$ grep '<<word>>' <<filename>>
```

#### Select specific lines that contains specific word in file and has special case
```console
notandi@skel:~$ grep '\*WARNING\* user...' <<filename>>
```

#### Select specific lines that contains specific word in file and export to new file
```console
notandi@skel:~$ grep '<<word>>' <<filename>> > <<new filename>>
```

#### Select specific lines that contains specific word in files inside folder
```console
notandi@skel:~$ grep -r '<<word>>' <<filename>>
```

#### Select specific lines that contains specific word in files inside folder and export to new file
```console
notandi@skel:~$ grep -r '<<word>>' <<filename>> > <<new filename>>
```

#### Select specific lines that contains specific word in file ordered
```console
notandi@skel:~$ grep '<<word>>' <<filename>> | sort
```

#### Select specific lines that contains specific word in files inside folder and export to new file ordered
```console
notandi@skel:~$ grep -r '<<word>>' <<filename>> sort > <<new filename>>
```

#### Remove lines that contain specific string in file
```console
notandi@skel:~$ sed '/<<string>>/d' <<filename>>
```

#### Remove lines that contain specific string in file and export to new file
```console
notandi@skel:~$ sed '/<<string>>/d' <<filename>> > <<new filename>>
```

#### Alphabetically sorted list of specific string with no duplicates.
```console
notandi@skel:~$ grep '<<string>>' <<filename>> | sort | uniq > <<new filename>>
```

#### Make script executable
```console
notandi@skel:~$ chmod +x <<filename>>
```

#### Create a script that only prints out the specific string from file
```console
notandi@skel:~$ vim <<filename>>
  #!/bin/bash
  grep '<<string>>' <<filename>> | cut -d '<<char that you want to cut on>>' -f9 | sort | uniq
```
