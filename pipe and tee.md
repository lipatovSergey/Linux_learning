#Linux #Command 
# pipe `|`

Used to redirect `stdout` to other command. 
```bash
ls dist/ | less
```
This command will get information what is inside `dist/` and redirect it to less command for more comfortable output.

# tee
Can be used by itself, but usually used with pipe (`|`). Used when we want to redirect `stdout` to another command and also write it to the file.
```bash
ls | tee output.txt
```
With this command we will get output to out console and also it will be written to output.txt.

```bash
ls | tee output.txt | less
```
This command will write ls's `stdout` to output.txt and also redirect it to `stdin` of less.

```bash
ls | tee peanut.txt banana.txt
```
Also can be written to several files