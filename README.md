# rofi-ttv
<p align="center">
  <img src="https://i.imgur.com/e2vdSts.png">
</p>

<p align="center">
  <a href="./LICENSE.md"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a>
  <a href="https://aur.archlinux.org/packages/rofi-ttv-git/"><img src="https://img.shields.io/aur/version/rofi-ttv-git"></a>
</p>

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

Just git clone this repo and place the `rofi-ttv` file somewhere on your `PATH` and make sure it is executable `chmod +x rofi-ttv`.

For Arch Linux (and derivatives):
```sh
yay -S rofi-ttv-git
```

# Configuration:

To view your followed channels, you will need to tell `rofi-ttv` your username. To specify your username you can either use the `TTV_USERNAME` environment variable or you can write it to `${XDG_CONFIG_HOME:-$HOME/.config}/rofi-ttv/username` for example:

```sh
$ echo "your_username" > ~/.config/rofi-ttv/username
```

To adjust the format with which the streams appear in the menu, adjust the `FORMAT` variable in the `rofi-ttv` script.

If you don't use `rofi`, `youtube-dl` or `mpv`, no problem, their usage is contained in the `menu`, `input` and `viewer` functions of the `rofi-ttv` script. So just adjust them to use your desired programs.
