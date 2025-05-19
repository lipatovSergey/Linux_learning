#Linux #Tools

# 🧑‍💻 User Management in Linux (Debian/Ubuntu)

## 🔸 Adding Users

You can use either the `adduser` or `useradd` command. However, on **Debian and Ubuntu**, it's recommended to use `adduser` because it provides more functionality out of the box.

```bash
sudo adduser bob
```

This command:

- Creates a new user entry in `/etc/passwd`
- Automatically creates the home directory `/home/bob`
- Copies default files from `/etc/skel`
- Sets the default shell (usually `/bin/bash`)
- Adds the user to default groups
- Prompts to set a password immediately

**✅ Why `adduser` is better than `useradd` on Debian/Ubuntu:**

- It's a high-level wrapper with user-friendly prompts
- Applies system-specific defaults and configurations
- Ensures the new user is usable right away

---

## 🔸 Removing Users

To remove users, Debian/Ubuntu provides the `deluser` command, which is preferred over the low-level `userdel`.

```bash
sudo deluser bob
```

To remove the user **and their home directory**:

```bash
sudo deluser --remove-home bob
```

To also remove **all user-owned files** (including outside of `/home`):

```bash
sudo deluser --remove-home --remove-all-files bob
```

**✅ Why `deluser` is better than `userdel`:**

- Safer and more descriptive
- Automatically handles Debian-specific configurations
- Offers options for removing home directories and user files

---

## 🔸 Changing Passwords

To set or change a user's password:

```bash
sudo passwd bob
```

This works for your own password (without a username) or for any other user (if run as root or with `sudo`).

---

## ✅ Summary

| Action           | Recommended Command                        | Reason                                          |
| ---------------- | ------------------------------------------ | ----------------------------------------------- |
| Add user         | `adduser`                                  | High-level, interactive, sets up home and shell |
| Remove user      | `deluser`                                  | Safer and clearer than `userdel`                |
| Remove with home | `deluser --remove-home`                    | Deletes user and home directory                 |
| Full removal     | `deluser --remove-home --remove-all-files` | Deletes user and all files they own             |
| Change password  | `passwd bob`                               | Universal way to set or change user passwords   |

---

> 🧠 **Note:** `adduser` and `deluser` are specific to Debian-based systems. On other distributions (e.g. Red Hat, Arch), you may need to use the lower-level `useradd` and `userdel` instead.

