#Linux #Command
chmod actually means 'change mode'
First argument describes which of three [[rwx-Read, Write, Execute]] to change.
- u - for user
- g - for group
- o - for others
`chmod o`
Then we use `+` to say that we are addind a permission, and r, w or x which permission we want to add.
`chmod o+x`
Finally we specify which file we are changing
`chmod o+x gorillas` it means that we gave to all other users permission to execute gorillas file.

We also can take permission by using  `-` instead of `+`. For example
`chmod ugo-rwx gorilla` this command will take all permissions from everyone.