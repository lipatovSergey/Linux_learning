#Linux #Command 
Used to remove files and directories.
```bash
rm file1.txt
```
Once removed file doesn't have any backup. We must be really careful with it.
Most of important files have protection and will ask permission if user is sure that he wants to delete file.

```bash
rmdir somedir/
```
Used to delete empty directories.
## Flags
### -f (force)
```
rm -f file
```
no matter if file has protection will delete it if user has rights for this. 

### -r (recursive)
```bash
rm -r dir/
```
will delete directory with all files and directories inside it.

<font color="#c00000">WARNING!</font> You must be really careful with this flags and REALLY careful wit combining this two flags to `rm -rf` it will force and recursively delete EVERYTHING!!!