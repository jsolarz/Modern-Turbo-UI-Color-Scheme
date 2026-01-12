# Windows Terminal Themes

Nostalgic Turbo Pascal color themes for Windows Terminal - featuring both the classic Borland Turbo Pascal aesthetic and a modern Nord-inspired variant. High contrast, readable, and perfect for long coding sessions.

Part of the [Modern Turbo Pascal UI](https://github.com/jsolarz/Modern-Turbo-UI-Color-Scheme) theme collection.

## Installation

1. Open Windows Terminal
2. Press `Ctrl+,` to open Settings
3. Click "Open JSON file" at the bottom
4. Find the `schemes` array in the `profiles` section
5. Add one of these theme objects to the `schemes` array:

### Nord Turbo Pascal Modern

```json
{
  "name": "Nord Turbo Pascal Modern",
  "background": "#252b36",
  "foreground": "#ECEFF4",
  "cursorColor": "#FFD75F",
  "selectionBackground": "#2E4A7F",
  "black": "#1A1D2A",
  "red": "#FF5C57",
  "green": "#A3E68C",
  "yellow": "#FFD75F",
  "blue": "#88C0D0",
  "purple": "#C27AC0",
  "cyan": "#8BE9FD",
  "white": "#ECEFF4",
  "brightBlack": "#343C50",
  "brightRed": "#FF7A73",
  "brightGreen": "#B4F7A0",
  "brightYellow": "#FFE28A",
  "brightBlue": "#A0D0E6",
  "brightPurple": "#D48AD8",
  "brightCyan": "#A0F0FF",
  "brightWhite": "#FFFFFF"
}
```

### Borland Turbo Pascal Original

```json
{
  "name": "Borland Turbo Pascal Original",
  "background": "#0000AA",
  "foreground": "#AAAAAA",
  "cursorColor": "#FFFFFF",
  "selectionBackground": "#5555AA",
  "black": "#000000",
  "red": "#AA0000",
  "green": "#00AA00",
  "yellow": "#AAAA00",
  "blue": "#0000AA",
  "purple": "#AA00AA",
  "cyan": "#00AAAA",
  "white": "#AAAAAA",
  "brightBlack": "#555555",
  "brightRed": "#FF5555",
  "brightGreen": "#55FF55",
  "brightYellow": "#FFFF55",
  "brightBlue": "#5555FF",
  "brightPurple": "#FF55FF",
  "brightCyan": "#55FFFF",
  "brightWhite": "#FFFFFF"
}
```

6. Save the file
7. In your profile settings, set `"colorScheme": "Nord Turbo Pascal Modern"` or `"colorScheme": "Borland Turbo Pascal Original"`

## Repository

- [GitHub Repository](https://github.com/jsolarz/Modern-Turbo-UI-Color-Scheme)
- [Report Issues](https://github.com/jsolarz/Modern-Turbo-UI-Color-Scheme/issues)
- [Full Documentation](https://github.com/jsolarz/Modern-Turbo-UI-Color-Scheme#readme)
