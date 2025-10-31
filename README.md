# Tokyo Cyan

Simple color scheme combining three well-known schemes into one.

![License](https://img.shields.io/badge/License-MIT-blue)

## Features

**Hybrid Colors**

- OneDark
- Tokyo Night
- AyuTokyo

## Installation

### Using lazy.nvim

```lua
{
  "user/tokyo-cyan",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("tokyo-cyan")
  end,
}
```

## Color Palette

### Backgrounds

| Name | Hex     | Usage                  |
| ---- | ------- | ---------------------- |
| bg0  | #0b0e14 | Main editor background |
| bg1  | #131721 | Floats, secondary UI   |
| bg2  | #16192e | Selection, emphasis    |

### Syntax Colors

| Element           | Color  | Hex     |
| ----------------- | ------ | ------- |
| Keywords          | Purple | #c678dd |
| Strings           | Green  | #98c379 |
| Functions         | Blue   | #61afef |
| Numbers/Constants | Orange | #d19a66 |
| Types             | Yellow | #e5c07b |
| Parameters        | Orange | #d19a66 |
| Properties        | Green  | #98c379 |
| Errors            | Red    | #e86671 |
| Accents           | Cyan   | #24ffb6 |
