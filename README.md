# Skycolor
Minetest utility mod to help manage sky color. Mod makes smooth transition between users given base sky colors.

## FAQ
Does this mod support sun or clouds?
- No. Only plain sky color is supported (no sun, clouds, moon and etc).

## Usage sample
Expected to be configured by other mods. Minimal requirements is color set and activation.

```
skycolor.add_layer(
    "my-color-layer-name",
    {{r=0, g=0, b=0},
    {r=83, g=14, b=83},
    {r=0, g=0, b=0}},
    true -- force update flag
)
skycolor.active = true
```
Force update flag is recomended to use for initial worlds sky color (otherwise it will update with delay).
