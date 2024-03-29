alacritty.toml
```
[env]
LANG = "en_US.UTF-8"
LC_CTYPE = "en_US.UTF-8"
TERM = "alacritty"

[font]
size = 15.0

[font.normal]
family = "Inconsolata"
style = "SemiBold"

[window]
dimensions.columns = 90
dimensions.lines = 45

[colors]

  [colors.primary]
  background = "#1E1E1E"
  foreground = "#D4D4D4"

  [colors.cursor]
  text = "#1d1f21"
  cursor = "#cccccc"

  [colors.normal]
  black = "#000000"
  red = "#cd3131"
  green = "#0dbc79"
  yellow = "#e5e510"
  blue = "#2472c8"
  magenta = "#bc3fbc"
  cyan = "#11a8cd"
  white = "#e5e5e5"

  [colors.bright]
  black = "#666666"
  red = "#f14c4c"
  green = "#23d18b"
  yellow = "#f5f543"
  blue = "#3b8eea"
  magenta = "#d670d6"
  cyan = "#29b8db"
  white = "#e5e5e5"

```

tmux.conf

```
unbind r
bind r source-file ~/.config/tmux/tmux.conf


set -g prefix C-s
set -g mouse on


bind-key h select-pane -L
bind-key l select-pane -R
bind-key k select-pane -U
bind-key j select-pane -D


set-option -g status-position top
set -g escape-time 10

```


