# Dotfiles

## GMail backup

Install the `mbsync` application to enable backing up your GMail account.
Configure the account in `~/.mbsyncrc` and add the password in an encrypted file:

```sh
echo "mypassword" | gpg --output .gmail.gpg --encrypt --recipient florian@floriandejonckheere.be
```

Enable and start the systemd timer unit:

```sh
systemctl --user daemon-reload
systemctl --user start --enable mbsync.timer
```

## Keybindings

Keybindings are defined in `~/.xbindkeysrc`.

## Wallpaper

Wallpaper is currently set as `~/.wallpapers/3qgp0ar9v78z.png`.
When changing the wallpaper, change it in the following locations:

- `~/.config/compiz-1/compizconfig/Default.ini` or using CCSM
- `/etc/lightdm/lightdm-gtk-greeter.conf` or using the LightDM GTK greeter settings application
- `~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml` or the XFCE4 Desktop settings application
