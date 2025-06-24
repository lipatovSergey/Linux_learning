#Linux #filesystems 

[[Inode descriptors in traditional file systems]]
When we want to delete a file or directory in a file system like `ext4`, for example using the command:  
`rm ./dir_1/file_2`  
the kernel searches for the entry `file_2` inside the inode of `dir_1`. Once it finds that `file_2` points to `inode 14`, it removes the directory entry (the name), and then decreases the link counter in `inode 14` by 1. If the link counter reaches 0, the system knows that no directory entry refers to this inode anymore, so it can safely delete both the inode and the file’s data.

However, if the inode has more than one hard link, deleting just one of them won’t remove the inode. The system will see that the link count is still above zero and will keep the inode and the associated data.