#Linux 
If we use command `ls -l` which means, list long listing. We will get list like this
```bash
-rw-r--r-- keeper prim 547 9:31 chimps
```
In this example keeper is our user name. 
Let's take a look on this line `-rw-r--r--`.
First `-` means that it's a file, directory has `d` instead.
### rwx
Actually means Read, Write, Execute and describes which actions could be done with relevant file (directory)
First `rw-` describes user (owner) permission. It says owner can read and write this file. X isn't used because this file isn't executable.
Second `r--` describes which permissions the group (prim) has. It says that they only can read the file.
Third `r--` describes which permissions the other (world) has. It says that others can only read the file.

We can change permisson for each kind of user by using [[chmod]] command