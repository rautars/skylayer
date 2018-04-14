# Skylayer
Minetest utility mod to help manage sky transitions. Mod includes smooth transition between users given base sky colors (for plain sky type). Tracks multiple sky definitions and display latest one. Each player have own list of sky layers.

## Usage samples
Expected to be configured by other mods. See demo.lua for detailed examples with chat commands. Demo by default is disabled and can be enabled by uncommenting file include inside init.lua.

### Sample with commented parameters
```
local sl = {}
sl.name = "sample_sky_with_clouds"
sl.sky_data = {
	-- These parameters used for minetest set_sky api, 
	-- please refer MT lua_api docs for parameter details.
	bgcolor = {r=0, g=100, b=255}, -- table, color in RGB format, optional.
	type = "plain", -- string, available types: regular, skybox, plain.
	textures = nil, -- table, textures for skybox type.
	clouds = true, -- boolean, flag if clouds should appear in front of "skybox" or "plain" types.

	-- These optional parameter are skylayer specific,
	-- if set they may override parameters above.
	gradient_colors = {{r=68, g=34, b=153}, {r=68, g=68, b=221}} -- table, color points used to create gradient based on world time, if set bgcolor will be overrided by color generated from gradient
}
sl.clouds_data = {
	-- These optional parameters used for minetest set_clouds api,
	-- please refer MT lua_api docs for paramater details.
	density = 0.4, -- number, clouds density from 0 (no clouds) to 1 (full clouds).
	color = "#fff0f0e5", -- string, basic cloud color with alpha channel.
	ambient = "#000000", -- string, cloud color lower bound.
	height = 120, -- number, cloud height
	thickness = 16, -- number, cloud thickness in nodes.
	speed = {x=5, z=-40}, -- table, speed + direction in nodes per second.

	-- These optional parameter are skylayer specific,
	-- if set they may override parameters above.
	gradient_colors = {{r=68, g=34, b=153}, {r=68, g=68, b=221}} -- table, same as sky gradient color, if set color will be overrided by color generated from gradient
}
skylayer.add_layer(player_name, sl)

```


### Gradient supported sky definition sample
```
local sl = {}
sl.name = "plain_sample_sky"
sl.sky_data = {
	gradient_colors = {
		{r=68, g=34, b=153},
		{r=254, g=174, b=45},
		{r=59, g=12, b=189}
	}
}
skylayer.add_layer(player_name, sl)
```


### Single solid color sky (no smooth transition)
```
local sl = {}
sl.name = "solid_black"
sl.sky_data = {
	bgcolor = {r=0, g=0, b=0}
}
skylayer.add_layer(player_name, sl)
```

### Skybox image based sky
```
local sl = {}
sl.name = "stars_sky"
sl.sky_data = {
	bgcolor = {r=0, g=0, b=0},
	type = "skybox",
	textures = {
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
