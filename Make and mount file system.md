#Linux 
## `mkfs`
Linux command used to create a new file system on a partition. It prepares the storage so that files and folders can be saved and organized. Under the hood, `mkfs` doesn't do everything itself - it automatically runs different tools like `mkfs.ext4`, `mkfs.xfs`, or `mkfs.vfat` depending on the file system type you choose.

## Mount point
It's just a normal folder where a file system is attached. The folder becomes a 'portal' into the file system. It's not where the files are stored - it's where you access them. It can be only one mount point for file system. But it can be changed after unmounting.

## UUID
It's unique ID for each file system that it got while creating. You can see them by using `blkid` or in `dev/disk/by-uuid`. It's better to use UUID for automounting, because Linux give  `/dev/sda`, `/dev/sdb` dynamically and it can change after reboot. 
## Example:
For example I created ext4 fie system in my /dev/sdb1 partition. 
```bash 
mkfs -t ext4 /dev/sdb1
```
Than I ran `bldk /dev/sdb1` to check if file system was created. Got this output
```
/dev/sdb1: UUID="c5f696c8-6ce5-4548-a13e-f59afc5c024e" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="2047d2b1-1ab8-4a72-bcaf-a5eadbc98572"
```
Everything looks good. Now i need to create a mount point. `mkdir /mnt/test`
Then I mount file system `sudo mount /dev/sdb1 /mnt/test`.
By default, newly formatted file systems are owned by root. Regular users can't write into it.
To give myself access I used `chown` command with `-R` flag for recursive.
```bash
sudo chown -R username:username /mnt/test
```
Then I made test.txt. `echo "This is sdb1 > test.txt`.
After that i used `umount` to unmount file system.
```bash
sudo umount /mnt/test
```
This detached file system from folder. Now `/mnt/test` empty. But files aren't deleted - they are still stored in `sdb1`.
If I mount file system back even to another folder. All files still there. 
On each reboot all file systems are unmount. For auto mounting on boot of machine I edited file `/etc/fstab`.
```bash
# get UUID 
blkid 
# copy UUID and add next line to fstab
UUID=b600fe63-d2e9-461c-a5cd-d3b373a5e1d2  /mnt/test  ext4  defaults  0  2
```

| **Field**   | **Meaning**                                                                |
| ----------- | -------------------------------------------------------------------------- |
| `UUID=...`  | Unique identifier of the device                                            |
| `/mnt/test` | Mount point (the folder where the file system will be attached)            |
| `ext4`      | File system type                                                           |
| `defaults`  | Default mount options                                                      |
| `0`         | Dump (used for backup tools — usually left as 0)                           |
| `2`         | File system check order (`2` = checked after root; `1` = root; `0` = skip) |
Now file system will auto mount on machine boot.
