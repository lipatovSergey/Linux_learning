#Linux #filesystems 

It's a data structure used in traditional file systems to keep track of which data blocks on disk are free and which in use. Each bit of bit map represents one block on the disk.

- A bit set to 0 means the block is free and available to use.
- A bit set to 1 means the block is already in use.

When new file is created, FS scans the block bitmap to find free blocks and updates bitmap accordingly. When a file is deled, it's blocks are marked as free by resetting the corresponding bits to 0.