# Amélie Light theme for ARGVUS

ARGVUS Light theme, `amelie-light`, with its Sticky and Float layouts.

## Theme identity

| Field | Value |
| --- | --- |
| Theme ID | `amelie-light` |
| Display name | Amélie Light |
| Mode | `light` |
| Package | `argvus-theme-amelie-light` |
| Wallpaper | `/usr/share/backgrounds/argvus/abstract/light/amelie-light-abstract-light.jxl` |

The theme is `src/usr/share/argvus/themes/amelie-light/theme.toml`: its name,
category, wallpaper and palette. Every component of the desktop renders its
files from that palette when the theme is applied, so the manifest and the
wallpaper are the whole package.

The palette uses pink (`#FAA2CA`), cream (`#FFFCE5`), and dark plum (`#382731`).
The abstract wallpaper features flowing satin ribbons generated with ImageGen.

Control Center and Control Panel use a dark plum background with cream text and pink highlights.
The desktop base, taskbar, and Widget Telemetry use the cream background.
Rose `#A33164` gives headings and controls more contrast on cream.

## Working on the theme

```sh
make check     # render every component in both layouts and report errors
make try       # install it as your own theme, then: argvus theme apply amelie-light
make untry     # remove that copy
make validate  # repository and packaging checks
make build     # build the package into build/dist/
make install   # install the package (sudo pacman -U)
```

Git installation reads the theme files from `src/`; `packaging/` is optional and only used to build Arch Linux packages. Publish this repository with its wallpaper. Users can install it with
`argvus theme install https://HOST/USER/argvus-theme-amelie-light.git`,
apply it with `argvus theme apply amelie-light`, and remove it with
`argvus theme uninstall amelie-light`. Installed themes appear in Custom themes.

See [DEVELOPMENT.md](DEVELOPMENT.md) for the build and release details.

## License

GPL-3.0-only. See [LICENSE](LICENSE).
