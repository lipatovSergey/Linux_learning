#Linux #Command 
## A symbolic link (symlink) 
In Linux is a special file that points to another file or directory. It acts like a shortcut and stores the path to the target rather than the actual data. If the original file will be deleted, the link will broke. It can be more then one link to the same file or directory.
To create symbolic link use `ln` with `-s` flag. Example:
```bash
ln -s /home/user/dir LinkToDir
# Always better to use full address of directory
# LinkToDir is a name of link
```
This links got `lrwxrwxrwx` permission by default, but this rules don't really control permission to directory or file the link is linked to.  Permission is determined by the target.
## A hard link (duplicate)
Works only with files. It's full duplicate of file with separate `inode`. To create it use `ln` without flag.
```bash
ln /home/user/dir/file fileduplicate
```
Changes in one will appear in second file. If one of them will be removed, there will be no effect on the second one. It can be more then one duplicate of the same file.