#Linux #Command 
Used to move or rename files
### Rename
files or directions doesn't matter
```bash
mv oldfile newfile
mv olddir newdir
```

### Move
```bash
mv somefile somedir/
```

### Move more then one file 
```bash
mv file1 file2 somedir/
```

## Flags
### -i
<span style="background:#ff4d4f">WARNING!</span> Like a cp command mv automatically replace file with the same name as moved one. In cases where we worried about it better to use -i flag
```bash
ls
file dir/
ls dir/
file
mv -i file dir/
```
In this case we will be asked if it's ok to replace file inside `dir/`

### -b
Also can be useful in situations with files with same name. Creates a backup file for file that we moved automatically adds tilde `~` to name of backup file.
```bash
text.txt dir/text.txt
mv -b text.txt dir/

ls dir/
text.txt text.txt~
```

