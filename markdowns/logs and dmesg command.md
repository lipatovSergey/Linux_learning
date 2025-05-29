#Linux #Linux/processes #Command  
All logs files are stored in `/var/log/` directory.

## `dmesg` 
Shows logs from Linux kernel itself.
### 📌 In detail:

- These are **not regular user-level logs**, but **internal messages from the kernel**, triggered by:
    - System boot  
    - Hardware initialization
    - Device connections/disconnections
    - Driver errors
    - Memory, CPU, and kernel module activity

---

### 💡 What makes `dmesg` special:

- It operates **independently from system logging services** like `syslog` or `journald` — it reads directly from the **kernel’s ring buffer**
- You can access it **even before logging services are running**, for example, during early boot troubleshooting

<span style="background:#ff4d4f">WARNING!</span> `dmesg` uses fix-sized buffer in memory. If you need to save logs in current state use `>` to write it into some file.