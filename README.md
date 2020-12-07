# rofi-ttv
[![AUR version](https://img.shields.io/aur/version/rofi-ttv-git)](https://aur.archlinux.org/packages/rofi-ttv-git/)

A scripts that uses `rofi`, `youtube-dl` and `mpv` to view twitch streams.

# Dependencies:

Hard coded:
 * `curl`
 * `jq`

Soft coded:
 * `rofi`
 * `youtube-dl`
 * `mpv`

# Installation:

Just git clone this repo and place the `rofi-ttv` file somewhere on your `PATH`.

For Arch Linux (and derivatives):
```sh
yay -S rofi-ttv-git
```

# Configuration:

To view your followed channels, you will need to tell `rofi-ttv` your username. To specify your username you can either use the `TTV_USERNAME` environment variable or you can write it to `${XDG_CONFIG_HOME:-$HOME/.config}/rofi-ttv/ttv_username` for example:

```sh
$ mkdir ~/.config/rofi-ttv
$ echo "your_username" > ~/.config/rofi-ttv/ttv_username
```

To adjust the format with which the streams appear in the menu, adjust the `FORMAT` variable in the `rofi-ttv` script.

If you don't user `rofi`, `youtube-dl` or `mpv`, no problem, their usage is contained in the `menu` and `viewer` functions of the `rofi-ttv` script. So just adjust them to use your desired programs.
