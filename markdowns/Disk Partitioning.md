#Linux 

It's a process of dividing a physical storage device (such as an HDD, SDD, or USB drive) into separate sections called 'partitions'. Each partition can function as independent unit, capable of holding a file system, operating system or data. It's like adding disk `:D` in Windows partly.

## Partition Table
It's a small data structure located at the beginning of the disk, that tells the operating system how disk is divided into partitions - where each partition starts, ends and what type it is.
There are two main types of partition tables: MBR and GPT.
#### 🧱 MBR (Master Boot Record)
- 📆 Introduced in the 1980s, still widely supported.
- Stored in the first 512kb of disk
- 🔢 Supports up to **4 primary partitions** (or 3 primary + 1 extended).
- 💾 Can only manage disks up to **2 TB** in size.
- 🛑 Stores all partition info in a single sector — **no redundancy**.
In most cases if machine doesn't use UEFI, uses legacy BIOS, we must use MBR. But this cases really rare in 2025.
#### 🧱 GPT (GUID Partition Table)
- 📆 Modern standard, part of the UEFI specification.
- Stored in the first part of disk, but also duplicated in it's end.
- 🔢 Supports up to **128 partitions** by default (no need for extended ones).
- 💾 Supports disks larger than **2 TB** (up to 9.4 ZB).
- ✅ Stores **multiple copies** of the partition table for redundancy.
- 🧩 Includes checksums for corruption detection.

## Tools
There are some most popular tools that used for disk partitioning.

| Tool     | GPT Support         | Level of Control | Ease of Use                 | Notes                                         |
| -------- | ------------------- | ---------------- | --------------------------- | --------------------------------------------- |
| `fdisk`  | ✅ (modern versions) | Medium           | Very simple                 | 📌 Most commonly used for basic scenarios     |
| `gdisk`  | ✅ GPT only          | Detailed         | Slightly specialized        | Ideal for GPT, but less commonly preinstalled |
| `parted` | ✅ GPT + MBR         | Flexible         | Slightly less user-friendly | Suitable for automation and GUI integration   |
<span style="background:#ff4d4f">WARNING!</span> `fdisk` and `gdisk` save changes only after sawing (writing with `w` command). `parted` save changes directly after each command.

## Example partitioning disk with `fdisk` and GPT
Step 1: Run a `fdisk` command `sudo fdisk /dev/sdb`
Step 2: Create GPT table by using `g` command. Got next answer
`Created a new GPT disklabel (GUID: 150AF027-E613-4D6B-BF83-F9ABF2DEBB64).`
Step 3: Run `p` command to get info and make sure that everything is ok. Got this
```
Disk /dev/sdb: 4 GiB, 4294967296 bytes, 8388608 sectors
Disk model: VBOX HARDDISK
Units: sectors of 1 * 512 = 512 bytes                                         
Sector size (logical/physical): 512 bytes / 512 bytes                         
I/O size (minimum/optimal): 512 bytes / 512 bytes                             
Disklabel type: gpt                                                           
Disk identifier: 150AF027-E613-4D6B-BF83-F9ABF2DEBB64
```
We can see `gpt` in Disklabel type.
Step 4: Create new partition by `n` command. For example I create 1gb partition. Size we choose in last sector by `+1G` command. In other options simply click enter. Answer:
`Created a new partition 1 of type 'Linux filesystem' and of size 1 GiB.`
Step 5 (optional): Each partition has type. Here table with most common types.

| Type             | Purpose                                 | Code in `fdisk` |
| ---------------- | --------------------------------------- | --------------- |
| Linux filesystem | Standard partition with ext4, xfs, etc. | 20 (or default) |
| EFI System       | EFI partition for UEFI booting          | 1               |
| BIOS boot        | GRUB bootloader on GPT disks            | 4               |
| Linux swap       | Swap space                              | 19              |
| Microsoft basic  | FAT32/NTFS (e.g., Windows)              | 11              |
| Linux LVM        | For Logical Volume Manager              | 31              |
By default `fdisk` creates partition with Linux filesystem type.
