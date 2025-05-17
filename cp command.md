#Linux #Command 
command for copy files and directories
```bash
cp filename directory/
```

If we need to copy directory with files in it, we must use -r (recursive flag) to copy files inside our directory recursively
```bash
cp -r dirWithFiles/ anotherDir/
```

## Flags

<span style="background:#ff4d4f">WARNING!</span> 
If you copy file into directory which has file with the same name file in directory will be replaced by copied one automatically without any warnings.
If we want to be asked if it's ok to replace file, we need to use -i (interactive flag)
```bash
cp -i somefile somedir/
```
If inside `somedir` is any file with name `somefile` we will be asked if it's ok to replace it. With out -i flag it will be replaced automatically
This and other flags works in the same way for cp and mv. See other flags here [[mv command]]