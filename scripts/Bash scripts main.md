#Bash 
To create bash script, create a file `.sh`. In top of the file very important to add line that describes what kind of script it is. For bash scripts always write `#!/bin/bash`.

After saving by default script has this permissions `-rw-rw-r--`. It's not executable by default. To run a script we can use `bash` command. Example: `bash script.sh`. Or we can make it executable with next command
```bash
sudo chmod a+x script.sh
# a - all users, all groups
# x executable
```

# Variables
<span style="background:#ff4d4f">WARNING!</span> Bash stores the value at the time of assignment, not a reference to the variable. It's not dynamic like in most programming languages. Example:
```bash
name="Alice"
greeting="Hello, $name"
name="Bob"
echo "$greeting"    # output: Hello, Alice
```
Variables are case sensitive and can consist of combination of letters and the `_` symbol. Variable name can also contain numbers (0-9) but not in the beginning of variable name.
Example of correct variables:
```bash
my_var=hello
MyVar123=42
_var=secret
```
### Strings in variables
If there no spaces inside string we can write it without any additional symbols. Example:
```bash
simple_string=somestring
```
If string contains spaces, we mush use `' '`. Example:
```bash
spaces_string='string with one or more spaces'
```
If string contains another variable, we need to use `" "`. Example:
```bash
age=33
HowOld_Alice="Alice is $age years old"
```
If string contains special characters like dollar sign. Need to use backslash to escape it:
```bash
PRICE_PER_APPLE=5
echo "The price of apple today is $PRICE_PER_APPLE \$"
```
Also it can be useful to put variable name inside `${}` to avoid ambiguity.
```bash
MyFirstLetters=ABC
echo "The first 10 letters in the alphabet are: ${MyFirstLetters}DEFGHIJ"
```


## Commands
We can save command inside variable by using back-ticks or `$()`.
```bash
FILELIST=`ls`
FileWithTimeStamp=/tmp/my-dir/file_$(/bin/date +%Y-%m-%d).txt
```

## Arguments
We can use arguments that passed with command that runs script inside a script itself, by using `$0, $1, $2...`
- `$0` - is a name of file that contains script.
- `$1, $2, $3...` - is an arguments in order that they passed to command
- `$#` - is an amount of arguments that were passed
- `$@` - contains all arguments in one string separated by space. 
Example:
```bash
#script variables_script.sh
#!/bin/bash
echo "File name is "$0
echo $3
Data=$5
echo "A $Data costs just $6"
echo $#

# command that runs the script
bash variables_sript.sh apple 5 banana 8 "Fruit basket" 15

# output
File name is my_shopping.sh
banana
A Fruit Basket costs just 15
6
```

## Arrays
A **Bash array** is a numerically indexed container that stores **string values**.  
These values may include:
- raw text,
- numbers,
- command outputs,
- the values of other variables.

All elements are **stored as plain strings**, and Bash does not differentiate types like in other languages (e.g., Python or JavaScript).

#### Variable values in array
Array can store values of variables:
```bash
name="Alice"
greeting="Hello, $name"
my_array=("$greeting")
echo "${my_array[0]}"
```

#### Commands output in arrays
Array can store commands outputs. Example:
```bash
#!/bin/bash                
array=("$(whoami)" "$(ls)")                                                  
echo "whoami output:${array[0]}"                                              echo "ls output: ${array[1]}"
```
<span style="background:#ff4d4f">WARNING!</span> Command output is evaluated once and then stored in string. If the command changes, or command output changes. the array doesn't auto-update.

| Item type                           | Can be stored? | Notes                                         |
| ----------------------------------- | -------------- | --------------------------------------------- |
| Text strings                        | ✅ Yes          | Always stored as strings                      |
| Numbers                             | ✅ Yes          | Stored as strings                             |
| Variable values                     | ✅ Yes          | Value is copied at time of assignment         |
| Variable names (as strings)         | ✅ Technically  | But indirect expansion needed to dereference  |
| Command output                      | ✅ Yes          | Very common usage                             |
| Variable references (like pointers) | ❌ No           | Bash has no pointer support                   |
| Bash functions or code              | ❌ No           | Use source or function definitions separately |
| Data structures / objects           | ❌ No           | Bash is not a structured programming language |
