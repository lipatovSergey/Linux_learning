#Linux 
- `*` - matches any number of  characters
examples:
```
ls *
will list all files in current directory

ls *ing 
will list all files which end in "ing"
```

- `?` - matches only one character
examples:
```
ls sp??t 
will list only files that have sp two characters t
It will list 'sport', but not 'spat'
```

- `~` - refers to users home directory
examples:
```
cp ~/jokes /tmp the same to cp /home/keeper/jokes /tmp
```
If there more than one users, we can use `~` + user's ID to refer to specific user home direction. Example: `cd ~bookie`. It always  better to use tilda to refer to user's home directories instead of  using full path. Direction of user's files can be changed, but tilda always refers to home user's directory by his ID