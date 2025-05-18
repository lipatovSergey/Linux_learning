#Linux #Command 
Very useful. Used to sort but except of classic numeric, alphabetic sorting also has some useful options like random sorting, reverse sorting, unique sorting. See man documentation and examples below. 

## ✅ Most Useful `sort` Options — with Examples

---

### 1. **Alphabetical sort (default)**

```bash
sort names.txt
```

Sorts the lines in `names.txt` in alphabetical order (A to Z).

---

### 2. **Numerical sort (`-n`)**

```bash
sort -n numbers.txt
```

Sorts lines **as numbers**, not as text (e.g., `2 < 10`, not `10 < 2`).

---

### 3. **Reverse sort (`-r`)**

```bash
sort -r file.txt
```

Sorts lines in **descending** order (Z to A or highest to lowest).

---

### 4. **Unique lines (`-u`)**

```bash
sort -u file.txt
```

Sorts the file and removes **duplicate lines** (same as `sort file.txt | uniq` but shorter).

---

### 5. **Sort by specific field (`-k`)**

```bash
sort -k 2 people.txt
```

Sorts by the **second field** in each line (e.g., by last name in `First Last`).

---

### 6. **Set custom delimiter (`-t`)**

```bash
sort -t ':' -k 2 data.txt
```

If fields are separated by something other than spaces (like `:`), use `-t`.

---

### 7. **Ignore case (`-f`)**

```bash
sort -f words.txt
```

Sorts without considering case — `Apple`, `banana`, and `cherry` are treated equally.

---

### 8. **Random sort (`-R`)**

```bash
sort -R file.txt
```

Shuffles the lines randomly — great for testing or sampling.

---

### 9. **Check if file is sorted (`-c`)**

```bash
sort -c file.txt
```

Does **not sort**, just checks if the file is already sorted.  
If not, it prints the first offending line.

---

### 10. **Human-readable size sort (`-h`)**

```bash
sort -h sizes.txt
```

For example, with:

```
100K
2M
1G
```

It sorts by actual size — great for files like `du -h`.
