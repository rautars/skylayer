# Skylayer
Minetest utility mod to help manage sky transitions. Mod includes smooth transition between users given base sky colors (for plain sky type). Tracks multiple skies definitions and display latest one. Each player have own list of sky layers.

## FAQ
Does this mod support sun or clouds?
- No. Only plain sky color and skybox images based sky is supported (no sun, clouds, moon and etc).

## Usage samples
Expected to be configured by other mods.

### Gradient supported sky definition sample
```
local sl = {}
sl.layer_type = skylayer.SKY_PLAIN
sl.name = "plain_sample_sky"
sl.data = {gradient_data={}}
sl.data.gradient_data.colors = {
	{r=68, g=34, b=153},
	{r=254, g=174, b=45},
	{r=59, g=12, b=189}
}
sl.data.gradient_data.min_value = 0
sl.data.gradient_data.max_value = 1000

skylayer.add_layer(player_name, sl)
```

### Single solid color sly (no smooth transition)
```
local sl = {}
sl.layer_type = skylayer.SKY_SOLID_COLOR
sl.name = "solid_black"
sl.data = {}
sl.data.color = {r=0, g=0, b=0}
skylayer.add_layer(player_name, sl)
```

### Skybox image based sky
```
local sl = {}
sl.layer_type = skylayer.SKY_SKYBOX
sl.name = "stars_sky"
sl.data = {}
sl.data.skybox = {
	{r=0, g=0, b=0},
	"skybox",
	{
		"skylayer_demo_stars_sky.png",
		"skylayer_demo_stars_sky.png",
		"skylayer_demo_stars_sky.png",
		"skylayer_demo_stars_sky.png",
		"skylayer_demo_stars_sky.png",
		"skylayer_demo_stars_sky.png"
	}
}
skylayer.add_layer(player_name, sl)
```