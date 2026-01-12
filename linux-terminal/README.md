# Linux Terminal Themes

## Shell Scripts (.sh)

### Usage

Source the script in your `.bashrc` or `.zshrc`:

```bash
source /path/to/nord-turbo-pascal-modern.sh
```

Or for Borland:

```bash
source /path/to/borland-turbo-pascal-original.sh
```

## Xresources (.Xresources)

### Usage

For X11-based terminals (xterm, urxvt, etc.):

```bash
xrdb -merge /path/to/nord-turbo-pascal-modern.Xresources
```

Or add to your `~/.Xresources`:

```
#include "/path/to/nord-turbo-pascal-modern.Xresources"
```

Then reload:

```bash
xrdb ~/.Xresources
```

## Terminal-Specific Setup

### Alacritty

Add to `~/.config/alacritty/alacritty.yml`:

```yaml
colors:
  primary:
    background: '#252b36'
    foreground: '#ECEFF4'
  cursor:
    text: '#252b36'
    cursor: '#FFD75F'
  normal:
    black:   '#1A1D2A'
    red:     '#FF5C57'
    green:   '#A3E68C'
    yellow:  '#FFD75F'
    blue:    '#88C0D0'
    magenta: '#C27AC0'
    cyan:    '#8BE9FD'
    white:   '#ECEFF4'
  bright:
    black:   '#343C50'
    red:     '#FF7A73'
    green:   '#B4F7A0'
    yellow:  '#FFE28A'
    blue:    '#A0D0E6'
    magenta: '#D48AD8'
    cyan:    '#A0F0FF'
    white:   '#FFFFFF'
```

### Terminator

Edit `~/.config/terminator/config`:

```ini
[profiles]
  [[default]]
    background_color = "#252b36"
    foreground_color = "#ECEFF4"
    cursor_color = "#FFD75F"
    palette = "#1A1D2A:#FF5C57:#A3E68C:#FFD75F:#88C0D0:#C27AC0:#8BE9FD:#ECEFF4:#343C50:#FF7A73:#B4F7A0:#FFE28A:#A0D0E6:#D48AD8:#A0F0FF:#FFFFFF"
```

### GNOME Terminal

Use `dconf` or the GUI:
- Settings → Profiles → Colors
- Set color palette to custom and enter the hex values
