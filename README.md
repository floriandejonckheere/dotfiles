# Dotfiles

## GMail backup

Install the `mbsync` application to enable backing up your GMail account.
Configure the account in `~/.mbsyncrc` and add the password in an encrypted file:

```sh
echo "mypassword" > .gmail
gpg --output .gmail.gpg --encrypt --recipient florian@floriandejonckheere.be .gmail
rm .gmail
```

Enable and start the systemd timer unit:

```sh
systemctl --user daemon-reload
systemctl --user start --enable mbsync.timer
```