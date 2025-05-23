#OTW #Bandit 
Bandit1 password ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
Bandit2 password 263JGJPfgU6LtdEvgfWU1XP5yac29mFx
Bandit3 password MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
Bandit4 password 2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
Bandit5 password 4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
Bandit6 password HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
Bandit7 password morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
Bandit8 password dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc
Bandit9 password 4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
Bandit10 password FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey
Bandit11 password dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
Bandit12 password 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4
Bandit 13 password FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn
Bandit 14 password MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS
Bandit 15 password 8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo
# Solutions
First 5 were really easy.

Bandit6 [[OTW Bandit6]]

Bandit7
The password for the next level is stored in the file **data.txt** next to the word **millionth**
```bash
grep "millionth" data.txt
# Simply found line with millionth
```

Bandit 8 
I used this command to get only unique line from file 
```bash
sort file.txt | uniq - u
```

Bandit 9
To find strings that start with = symbol I used grep with REGEX  `'^=+'`. Regex here says:
- `^` - start of line
- = - symbol that we looking for
- `+` - one or more symbols
But I didn't got nothing in output. The problem was in the `^` symbol, because it used only in extended Regex. To use it in grep we need to use -E flag or `egrep` that says to grep that we are using extended REGEX. The full `grep -E '^=+' data.txt`. But I got error message `grep: data.txt: binary file matches`. It means that data.txt is binary file. Firstly I thought to use `-a` flag, that tells to grep, no matter what you think, work with this file as with text file. Output was a bit messy because of binary symbols, but I could find the password. But I searched for better solution. And I found command `strings`, that actually find all human readable strings from file. I used `strings` and pipe lined it's output to grep command that I made before and It actually worked and I got all human readable strings that starts with '=' symbols. The full command
```bash
strings data.txt | grep -E '^=+' 
```

Bandit 10
Password was in file that contains base64 encoded line. Used next command to decoded.
```bash 
base64 -d data.txt
# -d is decoded flag
```

Bandit 11
In this task password was encoded by using ROT13. All symbols was rotated by 13 positions. I used `tr` command to get the password. Here is full command.
```bash
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
# tr doesn't has output, need to use cat with it
```

Bandit 12
Solution [[OTW Bandit 12]]

Bandit 13
Got SSH key private key. From bandit13 connected to bandit14 with a key and got password.
```bash
ssh -i sshkey.private bandit14@localhost -p 2220
cat /etc/bandit_pass/bandit14
```







