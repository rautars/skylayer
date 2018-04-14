-------------------------
-- Sky Layers: Demo
-- for testing skylayer api

-- Demo disabled by default, see init.lua to enable it.

-- License: MIT
-- Credits: xeranas
-------------------------

local add_rainbow_sky = function(player_name)
	local sl = {}
	sl.name = "rainbow_sky"
	sl.sky_data = {
		gradient_colors = {
			{r=68, g=34, b=153},
			{r=59, g=12, b=189},
			{r=51, g=17, b=187},
			{r=68, g=68, b=221},
			{r=17, g=170, b=187},
			{r=18, g=189, b=185},
			{r=34, g=204, b=170},
			{r=105, g=208, b=37},
			{r=170, g=204, b=34},
			{r=208, g=195, b=16},
			{r=204, g=187, b=51},
			{r=254, g=174, b=45},
			{r=255, g=153, b=51}, 
			{r=255, g=102, b=68},
			{r=255, g=68, b=34},
			{r=255, g=51, b=17},
			{r=248, g=12, b=18},
			{r=255, g=51, b=17},
			{r=255, g=68, b=34},
			{r=255, g=102, b=68},
			{r=255, g=153, b=51},
			{r=254, g=174, b=45},
			{r=204, g=187, b=51},
			{r=208, g=195, b=16},
			{r=170, g=204, b=34},
			{r=105, g=208, b=37},
			{r=34, g=204, b=170},
			{r=18, g=189, b=185},
			{r=17, g=170, b=187},
			{r=68, g=68, b=221},
			{r=51, g=17, b=187},
			{r=59, g=12, b=189}
		}
	}
	sl.clouds_data = {
		gradient_colors = {
			{r=34, g=204, b=170},
			{r=105, g=208, b=37},
			{r=170, g=204, b=34},
			{r=208, g=195, b=16},
			{r=204, g=187, b=51},
			{r=254, g=174, b=45},
			{r=255, g=68, b=34},
			{r=255, g=102, b=68},
			{r=255, g=153, b=51},
			{r=254, g=174, b=45},
			{r=59, g=12, b=189}
		},
		speed = {x=110, z=-400}
	}
	skylayer.add_layer(player_name, sl)
end

local add_solid_black_sky = function(player_name)
	local sl = {}
	sl.name = "solid_black"
	sl.sky_data = {
		bgcolor = {r=0, g=0, b=0}
	}
	skylayer.add_layer(player_name, sl)
end

local add_stars_sky = function(player_name)
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
end

minetest.register_chatcommand("sl_demo1_on", {
	params = "<player_name>",
	description = "Change sky for player",
	func = function(name, player_name)
		if player_name == nil or player_name == "" then
			player_name = name
		end
		add_rainbow_sky(player_name)
	end
})

minetest.register_chatcommand("sl_demo1_off", {
	params = "<player_name>",
	description = "Change sky for player",
	func = function(name, player_name)
		if player_name == nil or player_name == "" then
			player_name = name
		end
		skylayer.remove_layer(player_name, "rainbow_sky")
	end
})

minetest.register_chatcommand("sl_demo2_on", {
	params = "<player_name>",
	description = "Change sky for player",
	func = function(name, player_name)
		if player_name == nil or player_name == "" then
			player_name = name
		end
		add_solid_black_sky(player_name)
	end
})

minetest.register_chatcommand("sl_demo2_off", {
	params = "<player_name>",
	description = "Change sky for player",
	func = function(name, player_name)
		if player_name == nil or player_name == "" then
			player_name = name
		end
		skylayer.remove_layer(player_name, "solid_black")
	end
})

minetest.register_chatcommand("sl_demo3_on", {
	params = "<player_name>",
	description = "Change sky for player",
	func = function(name, player_name)
		if player_name == nil or player_name == "" then
			player_name = name
		end
		add_stars_sky(player_name)
	end
})

minetest.register_chatcommand("sl_demo3_off", {
	params = "<player_name>",
	description = "Change sky for player",
	func = function(name, player_name)
		if player_name == nil or player_name == "" then
			player_name = name
		end
		skylayer.remove_layer(player_name, "stars_sky")
	end
})