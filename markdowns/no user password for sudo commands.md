#Linux #Instructions
There is a file `/etc/sudoers`, this file lists users who can can run `sudo` commands.
To edit this file we must use `visudo` command. It will check the file before saving for critical mistakes. For example without this command user can delete sudo permission for all users and after that no one will not be able to change it. Because user need sudo permission to edit this file again.

This is how we can give some user permission to use sudo without user password. For me it useful for virtual machine that I use for labs.
```bash
sudo visudo
# at the bottom of the file in the section with name 
# user privilege specification 
# add next rool
username ALL=(ALL) NOPASSWD: ALL
```

That's it. Now this user will not be asked for his password each time he uses sudo.