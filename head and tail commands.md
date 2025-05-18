Sometimes it's enough too see only top or end of text file. That what head and tail commands used for.
Head by default shows first 10 lines of the file.
Tail by default shows last 10 lines of the file.

Amount of  lines can be set by using `-n` flag. Examples:
```bash
head -n 10 /var/log/syslog
tail -n 10 /var/log/syslog
```

With tail can be used `-f` (follow) flag. If the file dynamically grows it will always follow it and show us last lines.  