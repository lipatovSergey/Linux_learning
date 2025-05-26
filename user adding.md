#Linux 
To create user we use next command 
```bash
sudo useradd -m -s /bin/bash admin
sudo passwd admin
# -m creates new directory /home/admin
# -s /bin/bash sets bash as shell
```

If for some reason you forgot `-m` or `-s`
```bash
sudo mkdir -p /home/admin
# copy standart files (.bashrc, .profile, etc.)
sudo cp -r /etc/skel/. /home/admin
# changes all files owner in /home/admin to admin 
sudo chown -R admin:admin /home/admin
# sets Bash as default shell for admin
sudo chsh -s /bin/bash admin
```