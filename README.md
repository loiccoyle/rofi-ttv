# rofi-ttv

<p align="center">
  <img src="https://i.imgur.com/e2vdSts.png">
</p>

<p align="center">
  <a href="./LICENSE.md"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a>
  <a href="https://aur.archlinux.org/packages/rofi-ttv-git/"><img src="https://img.shields.io/aur/version/rofi-ttv-git"></a>
</p>

A scripts that uses `rofi`, `youtube-dl` and `mpv` to view twitch streams.

## 📦 Installation

Just git clone this repo and place the `rofi-ttv` file somewhere on your `PATH` and make sure it is executable `chmod +x rofi-ttv`.

For Arch Linux (and derivatives):

```sh
paru -S rofi-ttv-git
```

### Dependencies

- `curl`
- `jq`
- `rofi`
- `youtube-dl`
- `mpv`

## ⚙️ Configuration

To view your followed channels, you will need to tell `rofi-ttv` your username. To specify your username you can either use the `$TTV_USERNAME` environment variable or you can write it to `${XDG_CONFIG_HOME:-$HOME/.config}/rofi-ttv/username` for example:

```sh
$ echo "your_username" > ~/.config/rofi-ttv/username
```

If in doubt see the help:

<!-- help start -->

```console
$ rofi-ttv -h
Dynamic menu interface for Twitch.tv

To set your twitch username, either use the 'TTV_USERNAME'
environment variable or write it to '~/.config/rofi-ttv/username':

$ echo "your_username" > ~/.config/rofi-ttv/username

Usage:
  rofi-ttv [-hf] [followed|search [QUERY]]
    -h                         Display this help message.
    -f                         Menu format.
                               default: \(.user_name)\t\(.game_name[:30])\t\(.title[:50])\t👤 \(.viewer_count)
  rofi-ttv search QUERY...     Search channels.
    QUERY                      Search query.
  rofi-ttv followed            Show followed channels.
```

<!-- help end -->

To adjust the format with which the streams appear in the menu, use the `-f` option, a list of fields can be found in the [twitch api docs](https://dev.twitch.tv/docs/api/reference/#get-streams).
