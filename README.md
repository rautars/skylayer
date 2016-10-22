# Skycolor
Minetest utility mod to help manage sky color. Mod makes smooth transition between users given base sky colors.

## FAQ
Does this mod support sun or clouds?
- No. Only plain sky color is supported (no sun, clouds, moon and etc).

## Usage sample
Expected to be configured by other mods. Minimal requirements is color set and activation.

```
skycolor.colors = {
          {r=0, g=0, b=0}, 
          {r=124, g=5, b=74}, 
          {r=241, g=221, b=56}, 
          {r=124, g=5, b=74}, 
          {r=0, g=0, b=0}}
skycolor.active = true
```
