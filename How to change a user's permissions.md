#Linux 
First way is by using by editing `sudoers` file. <span style="background:#ff4d4f">Important!</span> Always use `sudo visudo` command to edit `sudoers`. It will check that everything is right and there no critical mistakes in `sudoers`. In next examples I am giving to user `username` permission to use `sudo`.
```bash
sudo visudo
# add next line to file and save it
username ALL=(ALL:ALL) ALL
```

Another way is to create separate file with rules in `/etc/sudoers.d/`. This the best practice. More flexible and modular, safer for CI/CD.
```bash
echo "username ALL=(ALL:ALL) ALL" | sudo tee /etc/sudoers.d/username
```