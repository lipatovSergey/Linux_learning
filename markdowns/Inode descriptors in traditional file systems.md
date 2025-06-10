#Linux #filesystems

In traditional file systems like `ext2, ext3, ext4` every file and every folder is describes by something called an inode.  
**inode** - a data structure used in Unix-like file systems to store information about a file or a directory. It contains metadata such as the file's type, size, permissions, timestamps and pointers to the data blocks where the file's contents are stored - but not the file name itself.

While creating a file system, system creates the table with a fixed number of inodes. If all inodes are used up, you won't be able to create new files or folders - even if there is still free space on the disk. By default file system `ext4` creates one inode for every 16KB. It means that the problem with not enough inodes can happen mostly in FS that contains a lot of small files. 

For example let's see simple file system.
![[Pasted image 20250611015417.png]]

And here is a structure of inode descriptors
For example `15 | 2 | file`. 15 is the descriptor number. This inode has 2 links, and it's a file.
Here we can see 2 links because in `dir_1` we have `file_3` with inode 15 and `file_5` with inode 15 as well. It means that the same data has two names (hard link).


