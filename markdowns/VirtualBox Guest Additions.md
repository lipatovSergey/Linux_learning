#Linux 
It's a set of drivers and system applications installed inside the guest operating system that improve integration and performance between the guest and the host system.
It enable features like:
- automatic screen resizing,
- shared clipboard,
- seamless mouse pointer integration,
- drag and drop support,
- shared folders,
- better video performance.
In my case I needed it for shared folders

### Step 1
First of all installed tools needed to compile kernel modules
```bash
sudo apt update
sudo apt install build-essential dkms linux-headers-$(uname -r)
```

### Step 2
Insert the Guest Additions ISO. ISO is location in my case `D:/VirtualBox/VboxGuestAdditions.iso`
```
Devices → Insert Guest Additions CD image…
```

### Step 3
Manually mount ISO (if not mounted automatically)
```bash
sudo mkdir -p /cdrom
sudo mount /dev/cdrom /cdrom
```

### Step 4
Running the installer. It will extract and build kernel modules.
```bash
sudo /cdrom/VBoxLinuxAdditions.run
```

### Step 5
Firstly I got error message that bzip2 is required. Installed it. Then got error message that `gcc`, `make` and `perl` required. Installed them too. Ran installer.
```bash
sudo apt install bzip2 gcc make perl
```

### Step 6
Reboot system 
```bash
sudo reboot
```

### Step 7  
Verified installation
```bash
lsmod | grep vbox
```
In the results was `vboxguest`