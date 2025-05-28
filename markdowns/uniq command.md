It compares lines one after another and removes duplicates if they appear consecutively.
Because it removes only duplicated lines that appear consecutively, usually used with sort, to remove all the duplicates from file. 
### 1. **Remove consecutive duplicate lines**

```bash
uniq file.txt
```

Removes repeated lines that appear **right next to each other**.

---

### 2. **Remove all duplicates (regardless of position)**

```bash
sort file.txt | uniq
```

`sort` puts duplicates next to each other, and `uniq` removes them.

---

### 3. **Count occurrences of each line**

```bash
sort file.txt | uniq -c
```

Shows how many times each unique line appears.

📤 Example output:

```
  1 apple
  3 banana
  2 cherry
```

---

### 4. **Show only duplicated lines**

```bash
sort file.txt | uniq -d
```

Displays lines that appear **more than once**.

---

### 5. **Show only unique (non-repeated) lines**

```bash
sort file.txt | uniq -u
```

Displays lines that occur **exactly once**.

---

### 6. **Ignore case while comparing**

```bash
sort file.txt | uniq -i
```

Treats `Apple` and `apple` as the same.

---

### 7. **Skip fields or characters when comparing**

```bash
uniq -f 1 file.txt    # skip first field
uniq -s 3 file.txt    # skip first 3 characters
```

Useful when the beginning of the line contains irrelevant or varying info.
