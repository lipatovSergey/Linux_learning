#Bash #Linux 
There are several syntaxis in bash for `if`. 
## Conditions
### `[]` — classic form of the `test` command

- Used like: `if [ condition ]; then ...`
    
- **Always quote variables** (`"$VAR"`) to avoid errors when the value is empty or contains spaces.
    
- Does **not** support ` =~ ` (regex), or logical operators like `&&`, `||`.
    

---

### `[[ ]]` — extended test expression

- Available in **Bash** and **KornShell** (not POSIX-compliant).
    
- Allows:
    
    - regex matching with ` =~ `
        
    - symbolic comparisons (` == `, `<`, `>`) **without quotes**
        
    - logical operators like `&&` and `||` _inside_ the brackets
        
- You **can** omit quotes around variables, but quoting is still safer and more portable.
    

---

### `(( ))` — arithmetic evaluation

- Interprets the contents as a **math expression**, like a calculator.
    
- Returns an **exit status**:
    
    - `0` if the result is non-zero (true)
        
    - `1` if the result is zero (false)
        
- Commonly used in `if`, `while`, and `for` loops.
    

---

### `$(( ))` — arithmetic **expansion**

- Computes and **returns a numeric result**, which can be used in a command or printed.
    
- Does **not** return a true/false status — it just evaluates and substitutes a number.

