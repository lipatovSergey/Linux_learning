#Linux #Command 
All this command used to show processes. 
## `top`
Like task manager in Windows. Shows all processes that run on machine. 
- `P` - uppercase P will sort processes by CPU
- `M` - uppercase M will sort processes by MEM

## `free`
Shows free memory. Use `-m` to see output in Mb.

## `ps` 
Like `top` shows processes that runs on machine, but it takes a snapshot at the moment command run(Does not update live). Very useful with `aux` flags.
- `a` - shows all processes of all users (not only current)
- `u` - shows user name and full information
- `x` - includes processes not attached to terminal (background services, daemons).
Also can be used with [[grep command]] to find specific user or process. For example: 
```bash
# Will show all bash processes
ps -aux | grep bash
```