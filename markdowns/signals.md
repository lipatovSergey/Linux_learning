#Linux 
### ✅ Definition of a signal in Linux:

> A **signal** is a limited form of inter-process communication (IPC) used in Unix-like operating systems. It is an asynchronous notification sent to a process to notify it that a specific event has occurred or to request it to perform an action, such as terminating, pausing, or reloading configuration.

---

### 💡Asynchronous?
Signals are asynchronous because they don't wait for the process to finish what it's doing.
They can "jump" at any time, even if the process isn't expecting anything.
The process might be running a loop, sleeping, or doing a calculation - and signal can still interrupt it instantly.

Signals it's universal mechanic, but each process decides what to do whit a signal - handle, ignore or end. Process can define its own signal handler by using `trap` in Bash or `signal()` in C. If there no handler signal will trigger default logic, which defined by kernel. 
### 📊 Common Linux Signals Table:

| Signal Name | Signal # | Meaning                            | Can Be Caught or Ignored? | Notes                                             |
| ----------- | -------- | ---------------------------------- | ------------------------- | ------------------------------------------------- |
| `SIGTERM`   | 15       | Terminate the process (gracefully) | ✅ Yes                     | Default for `kill`. Preferred for clean shutdown. |
| `SIGKILL`   | 9        | Kill the process (immediately)     | ❌ No                      | Cannot be blocked or caught. Forces exit.         |
| `SIGINT`    | 2        | Interrupt (e.g., Ctrl+C)           | ✅ Yes                     | Typically sent from terminal.                     |
| `SIGHUP`    | 1        | Hang up / Reload config            | ✅ Yes                     | Often used to reload daemons.                     |
| `SIGQUIT`   | 3        | Quit and dump core                 | ✅ Yes                     | Like Ctrl+\|                                      |
| `SIGSTOP`   | 19       | Stop process (pause)               | ❌ No                      | Can’t be caught or ignored.                       |
| `SIGCONT`   | 18       | Resume a stopped process           | ✅ Yes                     | Sends “continue” to paused process.               |
| `SIGUSR1`   | 10       | User-defined signal 1              | ✅ Yes                     | For custom use in apps/scripts.                   |
| `SIGUSR2`   | 12       | User-defined signal 2              | ✅ Yes                     | Same as above.                                    |
| `SIGCHLD`   | 17       | Sent to parent when child dies     | ✅ Yes                     | Useful in daemons/process managers.               |
| `SIGALRM`   | 14       | Alarm clock                        | ✅ Yes                     | Used with timers.                                 |
| `SIGSEGV`   | 11       | Segmentation fault                 | ✅ Yes                     | Often fatal; invalid memory access.               |
| `SIGPIPE`   | 13       | Broken pipe                        | ✅ Yes                     | Happens if writing to closed pipe.                |
