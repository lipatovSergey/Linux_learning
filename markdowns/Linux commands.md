#Linux 

### How command build
```
command [option] [arguments]
example:
ls -l /home/greg
ls - command
-l option (flag)
/home/greg  - argument
```

### man command
man command is used to list documentation about specific command. For example 
`man ls` wil show documentation for `ls` command
`-k` is an option to man command to search documentation for command by keyword
In documntation for command it can be shown in this way
```
ls [option]... [file]...
or
man [-k] keyword
```
- `[]` - means that it's optional 
- without `[]` - means that it's required
- `...` - means that it's possible to pass multiple arguments or options

### find
[[find command]]

### redirection of result
Regularly when we run a command it's result show in stdout(directly in terminal), by using next symbols we can write results of commands into files
`>` - will create new file or rewrite it if it's exists
```
ls > file.txt
```
`>>` - will append result to the end of file, if file doesn't exists it will be created 
```
echo "New Line" >> text.txt
```