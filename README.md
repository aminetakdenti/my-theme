# Onyx Theme

A minimal monochromatic theme for [Zed](https://zed.dev), forked from [Shawn Lukas's Onyx theme](https://github.com/shawnlukas/onyx). Also includes matching [Ghostty](https://ghostty.org) terminal themes.

## Variants

### Zed / VS Code

| Variant    | Background | Foreground | Accent    |
| ---------- | ---------- | ---------- | --------- |
| Onyx Dark  | `#111111`  | `#eeeeee`  | `#0090ff` |
| Onyx Light | `#eeeeee`  | `#333333`  | `#0066ff` |

### Ghostty

| Variant    | Background | Foreground | Accent (Gold) |
| ---------- | ---------- | ---------- | ------------- |
| Onyx Dark  | `#111111`  | `#eeeeee`  | `#e5b842`     |
| Onyx Light | `#eeeeee`  | `#333333`  | `#c49312`     |

Both variants keep syntax highlighting deliberately understated — keywords, strings, and punctuation share muted grays, while functions and properties get the full foreground color to draw the eye to what matters.

## Installation

### Zed

#### Via Extension Manager (recommended)

1. Open Zed and press `cmd+shift+p`
2. Run **Extensions: Install Extension**
3. Search for **Onyx Theme** and install

#### Manual

1. Clone this repository into your Zed extensions directory:
   ```sh
   git clone https://github.com/aminetakdenti/my-theme \
     ~/.config/zed/extensions/onyx-theme
   ```
2. Restart Zed

#### Activation

1. Open the command palette (`cmd+shift+p`)
2. Run **theme selector: toggle**
3. Select **Onyx Dark** or **Onyx Light**

### VS Code

#### Manual

1. Copy the `vscode/` directory into your VS Code extensions directory:
   - **macOS/Linux:** `~/.vscode/extensions/onyx-theme`
   - **Windows:** `%USERPROFILE%\.vscode\extensions\onyx-theme`
2. Restart VS Code

#### Activation

1. Open the command palette (`ctrl+shift+p` / `cmd+shift+p`)
2. Run **Preferences: Color Theme**
3. Select **Onyx Dark** or **Onyx Light**

### Ghostty

1. Copy your preferred theme file (`onyx-dark` or `onyx-light`) from the `ghostty/` directory into your Ghostty themes directory:
   - **macOS/Linux:** `~/.config/ghostty/themes/`
2. Add the following to `~/.config/ghostty/config`:

```ini
theme = onyx-dark
```
