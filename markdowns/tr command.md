#Linux #Command 
Used to translate a set of characters into another another set of characters.
<span style="background:#ff4d4f">WARNING!</span>  Doesn't work with files directly, works only with `stdin` and `stdout`.
## ✅ Most Common and Useful Uses of `tr` (translate)

> `tr` stands for **translate**, and it's used to **replace, remove, or compress characters** from standard input.

---

### 1. **Convert lowercase to uppercase**

```bash
echo "hello world" | tr 'a-z' 'A-Z'
```

📤 Output: `HELLO WORLD`

---

### 2. **Convert uppercase to lowercase**

```bash
echo "HELLO" | tr 'A-Z' 'a-z'
```

📤 Output: `hello`

---

### 3. **Delete specific characters (`-d`)**

```bash
echo "hello 123 world" | tr -d '0-9'
```

📤 Output: `hello world`  
(Removes all digits)

---

### 4. **Replace spaces with underscores**

```bash
echo "my file name" | tr ' ' '_'
```

📤 Output: `my_file_name`

---

### 5. **Remove duplicate characters (`-s`)**

```bash
echo "aaa     bbb" | tr -s ' '
```

📤 Output: `aaa bbb`  
(Removes repeated spaces)

---

### 6. **Delete all newline characters (`-d`)**

```bash
cat file.txt | tr -d '\n'
```

📤 Output: One continuous line with all line breaks removed.

---

### 7. **Replace newline with space**

```bash
cat file.txt | tr '\n' ' '
```

📤 Output: Same lines, but joined with spaces.

---

