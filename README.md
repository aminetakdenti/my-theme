# Onyx Theme

A minimal monochromatic theme for the [Zed](https://zed.dev) editor, forked from [Shawn Lukas's Onyx theme](https://github.com/shawnlukas/onyx).

## Variants

| Variant | Background | Foreground | Accent |
|---------|-----------|------------|--------|
| Onyx Dark | `#111111` | `#eeeeee` | `#0090ff` |
| Onyx Light | `#eeeeee` | `#333333` | `#0066ff` |

Both variants keep syntax highlighting deliberately understated — keywords, strings, and punctuation share muted grays, while functions and properties get the full foreground color to draw the eye to what matters.

## Installation

### Via Zed Extension Manager (recommended)

1. Open Zed and press `cmd+shift+p`
2. Run **Extensions: Install Extension**
3. Search for **Onyx Theme** and install

### Manual

1. Clone this repository into your Zed extensions directory:
   ```sh
   git clone https://github.com/aminetakdenti/my-theme \
     ~/.config/zed/extensions/onyx-theme
   ```
2. Restart Zed

## Activation

1. Open the command palette (`cmd+shift+p`)
2. Run **theme selector: toggle**
3. Select **Onyx Dark** or **Onyx Light**

## Credits

Originally created by [Shawn Lukas](https://github.com/shawnlukas/onyx). This fork is maintained by [Amine Takdenti](https://github.com/aminetakdenti).

## License

MIT
