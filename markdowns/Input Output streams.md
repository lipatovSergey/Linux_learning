#Linux 
Every program in Unix like systems gets three streams
- stdin -  input stream (keyboard) Descriptor: 0.
- stderr - error stream. Descriptor: 1.
- stderr - error stream. Descriptor: 2.

Example: 
You write ls command in terminal and press enter
 `ls` in this keys is `stdin`. What program gets
 Output that user sees it's `stdout`. 
 If user makes mistake like `ls non_existing_file`. `stdout` will stay empty errors have separate stream `stderr`. But output will still be on monitor.

## I/O redirection operators
We can use operators to control streams.
- `>` - redirect output. If user redirect stream to file, if file doesn't exist system will create it and write output inside it. If file exists it will rewrite it.
- >> - redirect output. Also if file doesn't exist it will be created. But if file exists output will be written at the bottom of this file.
- `<` - redirect input stream. Standard  `stdin` is keyboard but user can use text from file instead. Example `cat < text.txt`. We send text from text.txt to cat command and it will be shown on monitor. 
- `2>` - redirect error stream. We must use `stderr` descriptor `2` before `>` symbol. This how system will understand that we work with error stream. `command 2> error.txt`.

Also it's possible to combine this operators in one command. Example:
```bash
cat < text.txt > output.txt
```
Here we redirected input for cat command from text.txt and then redirect cat's output to output.txt file.
If we want to redirect output and error stream to the same file we can use this combinations
```bash
command > output.txt 2>&1
# 2>&1 means - redirect stderr to the same place where stdout redirected
command &> output.txt
# makes the same but works only for bash, but not in sh or other shells.
```
If we want to redirect `stdout` to one file and `stderr` to another in the same command
```bash
command > out.txt 2> error.txt
```

Also we can redirect any output to /dev/null it's a null file that works as bit bucket. Everything that redirected to /dev/null will be deleted. Sometimes it can be useful, for example we don't want to save or see `stdout` at all. 
```bash
command > /dev/null
```

