# Old Faithful Colorscheme

An xterm-256 based variant of the Neovim default palette.

The `OldFaithful*` colors mirror the `Nvim*` color names from Neovim's default
colorscheme, but each one is backed by a concrete xterm color. The light accent
colors are intentionally more saturated than the original Neovim pastels.

The colorscheme writes out Neovim's default highlight groups explicitly, split
into common, light, and dark sections, and swaps the built-in `Nvim*` colors for
the `OldFaithful*` xterm colors below. This makes the file useful as a base for
manual tweaks while keeping the default links, attributes, and
background-dependent structure.

| Source | Old Faithful alias | xterm color | Index | Hex |
| --- | --- | --- | ---: | --- |
| `NvimDarkBlue` | `OldFaithfulDarkBlue` | `DeepSkyBlue4_24` | 24 | `#005f87` |
| `NvimDarkCyan` | `OldFaithfulDarkCyan` | `Turquoise4` | 30 | `#008787` |
| `NvimDarkGreen` | `OldFaithfulDarkGreen` | `DarkGreen` | 22 | `#005f00` |
| `NvimDarkMagenta` | `OldFaithfulDarkMagenta` | `DeepPink4_53` | 53 | `#5f005f` |
| `NvimDarkRed` | `OldFaithfulDarkRed` | `DarkRed_52` | 52 | `#5f0000` |
| `NvimDarkYellow` | `OldFaithfulDarkYellow` | `Orange4_58` | 58 | `#5f5f00` |
| `NvimLightBlue` | `OldFaithfulLightBlue` | `CornflowerBlue` | 69 | `#5f87ff` |
| `NvimLightCyan` | `OldFaithfulLightCyan` | `DarkTurquoise` | 44 | `#00d7d7` |
| `NvimLightGreen` | `OldFaithfulLightGreen` | `SpringGreen3_41` | 41 | `#00d75f` |
| `NvimLightMagenta` | `OldFaithfulLightMagenta` | `MediumPurple1` | 141 | `#af87ff` |
| `NvimLightRed` | `OldFaithfulLightRed` | `IndianRed1_203` | 203 | `#ff5f5f` |
| `NvimLightYellow` | `OldFaithfulLightYellow` | `Orange1` | 214 | `#ffaf00` |
| `NvimLightGrey1` | `OldFaithfulLightGrey1` | `Grey93` | 255 | `#eeeeee` |
| `NvimLightGrey2` | `OldFaithfulLightGrey2` | `Grey89` | 254 | `#e4e4e4` |
| `NvimLightGrey3` | `OldFaithfulLightGrey3` | `Grey78` | 251 | `#c6c6c6` |
| `NvimLightGrey4` | `OldFaithfulLightGrey4` | `Grey62` | 247 | `#9e9e9e` |
| `NvimDarkGrey4` | `OldFaithfulDarkGrey4` | `Grey30` | 239 | `#4e4e4e` |
| `NvimDarkGrey3` | `OldFaithfulDarkGrey3` | `Grey19` | 236 | `#303030` |
| `NvimDarkGrey2` | `OldFaithfulDarkGrey2` | `Grey7` | 233 | `#121212` |
| `NvimDarkGrey1` | `OldFaithfulDarkGrey1` | `Grey3` | 232 | `#080808` |

## Usage

```vim
colorscheme old-faithful
```

The colors are also available as Lua data:

```lua
local palette = require("old-faithful.palette")
print(palette.colors.OldFaithfulLightBlue)
```
