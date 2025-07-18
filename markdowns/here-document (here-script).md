#Linux #Bash 
The `<<` operator is used for **input redirection** to a command
### Example:
```bash
cat << _EOF_
some text
_EOF_
````

- `_EOF_` is just a **delimiter** — you can use any label you like (e.g., `END`, `DATA`, `HTML`).
    
- Important: The closing delimiter must be **on a line by itself** with no spaces or tabs after it.
    

---

### Common usage with `cat`, but works with other commands too:

```bash
ftp -n << _EOF_
open $FTP_SERVER
user anonymous me@linuxbox
cd $FTP_PATH
hash
get $REMOTE_FILE
bye
_EOF_
```

---

## `<<-` variant: allows leading **tabs** (but not spaces) to be ignored:

```bash
ftp -n <<- _EOF_
	open $FTP_SERVER
	user anonymous me@linuxbox
	cd $FTP_PATH
	hash
	get $REMOTE_FILE
	bye
	_EOF_

ls -l $REMOTE_FILE
```

- Leading **tab characters** are stripped from each line and from the closing delimiter.
    
- This helps with indentation inside scripts.
    

---