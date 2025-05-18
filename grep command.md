#Linux #Command 
Used to search for lines or files by characters that match a certain pattern.

| Флаг     | Назначение                                          | Пример                       |
| -------- | --------------------------------------------------- | ---------------------------- |
| `-i`     | Игнорировать регистр                                | `grep -i error file.txt`     |
| `-v`     | Инвертировать (показать строки без совпадения)      | `grep -v DEBUG log.txt`      |
| `-r`     | Рекурсивный поиск по всем файлам в папке            | `grep -r TODO ./src`         |
| `-n`     | Показать номер строки                               | `grep -n main file.c`        |
| `-l`     | Показать только имена файлов с совпадением          | `grep -l password *.txt`     |
| `-c`     | Подсчитать количество совпадений                    | `grep -c root /etc/passwd`   |
| `-w`     | Ищет точные совпадения по слову                     | `grep -w root /etc/passwd`   |
| `-x`     | Совпадение по всей строке                           | `grep -x "apple" fruits.txt` |
| `-E`     | Использовать расширенные регулярные выражения (ERE) | `grep -E "cat\|dog" file.txt |
| `-A NUM` | Показать NUM строк после совпадения                 | `grep -A 2 error log.txt`    |
| `-B NUM` | Показать NUM строк до совпадения                    | `grep -B 2 error log.txt`    |
| `-C NUM` | Показать NUM строк до и после совпадения            | `grep -C 2 error log.txt`    |
