#Linux #Command 
Paste used to merge lines together. 
For example:
```bash
cat paste1.txt
apple
banana
cherry
cat paste2.txt
red
yellow
dark red

paste paste1.txt paste2.txt
apple    red
banana   yellow
cherry   dark red
```

By default it use TAB as delimiter, but it can be changed by using -d(delimiter flag)
```bash 
paste -d ',' paste1.txt paste2.txt
apple,red
banana,yellow
cherry,dark red
```

Also can be used to combine all lines of the file to one line by using -s flag
```bash
paste -s paste1.txt
apple   banana   cherry
```