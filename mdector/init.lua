mdector = {};


 --dofile(minetest.get_modpath("mdector").."/da.lua")
-- priv
minetest.register_privilege("machines", {
	description = "Player is expert basic_machine user: his machines work while not present on server, can spawn more than 2 balls at once",
})
-- Settings
mdector.clockgen = 1;
-- mdector by ManElevation	
-- Lamp 
minetest.register_node("mdector:lamp", {
	drawtype = "glasslike",
	description = "Lamp",
	tiles = {"mdector_lamp.png"},
	inventory_image = minetest.inventorycube("mdector_lamp.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy=3,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
})

minetest.register_craft({
	output = 'mdector:lamp 1',
	recipe = {
		{'', '', ''},
		{'default:mese_crystal', 'default:glass', 'default:mese_crystal'},
		{'', '', ''},
	}
})
-- Diamond Glass 
minetest.register_node("mdector:diamondglass", {
	drawtype = "glasslike",
	description = "Diamond Glass",
	tiles = {"mdector_diamondglass.png"},
	inventory_image = minetest.inventorycube("mdector_diamondglass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy=3,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
})

minetest.register_craft({
	output = 'mdector:diamondglass 1',
	recipe = {
		{'', '', ''},
		{'default:diamond', 'default:glass', 'default:diamond'},
		{'', '', ''},
	}
})
-- Framed Diamond Light
minetest.register_node("mdector:frameddiamondlight", {
	drawtype = "glasslike",
	description = "Framed Diamond Light",
	tiles = {"mdector_frameddiamondlight.png"},
	inventory_image = minetest.inventorycube("mdector_frameddiamondlight.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy=3,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
})

minetest.register_craft({
	output = 'mdector:frameddiamondlight 1',
	recipe = {
		{'', '', ''},
		{'default:diamond', 'default:meselamp', 'default:diamond'},
		{'', '', ''},
	}
})
-- Compresed Mese
minetest.register_node("mdector:compresedmese", {
	description = "Compresed Mese",
	tiles = {"mdector_compresedmese.png"},
	inventory_image = minetest.inventorycube("mdector_compresedmese.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
	light_source = 3,
})

minetest.register_craft({
	output = 'mdector:compresedmese 1',
	recipe = {
		{'default:mese_crystal', 'default:mese_crystal', 'default:mese_crystal'},
		{'default:mese_crystal', 'default:mese', 'default:mese_crystal'},
		{'default:mese_crystal', 'default:mese_crystal', 'default:mese_crystal'},
	}
})
-- Darkage Glass
minetest.register_node("mdector:darkageglass", {
	drawtype = "glasslike",
	description = "Darkage Glass",
	tiles = {"mdector_darkageglass.png"},
	inventory_image = minetest.inventorycube("mdector_darkageglass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	sounds = default.node_sound_glass_defaults(),
	groups = {snappy=3,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_craft({
	output = 'mdector:darkageglass 1',
	recipe = {
		{'dye:red', 'default:glass', 'dye:orange'},
		{'dye:red', 'default:glass', 'dye:orange'},
		{'dye:red', 'default:glass', 'dye:orange'},
	}
})
-- Rusted Steel Block
minetest.register_node("mdector:rustedsteel", {
	description = "Rusted Steel Block",
	tiles = {"mdector_rustedsteel.png"},
	inventory_image = minetest.inventorycube("mdector_rustedsteel.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_craft({
	output = 'mdector:rustedsteel 1',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:mossycobble', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})
-- Locked Fireplace
minetest.register_node("mdector:fireplace", {
	description = "Locked Fireplace",
	tiles = {
		"default_furnace_top.png",
		"default_furnace_top.png",
		"default_furnace_side.png",
		"default_furnace_side.png",
		"default_furnace_side.png",
		"mdector_fireplace.png",
	},
	inventory_image = minetest.inventorycube("default_furnace_top.png",
		"mdector_fireplace.png",
		"default_furnace_side.png",
		"default_furnace_side.png",
		"default_furnace_side.png",
		"mdector_fireplace.png"),
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "facedir",
	light_source = 8,
	drop = "mdector:fireplace",
	groups = {cracky=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	light_source = default.LIGHT_MAX,
})
minetest.register_craft({
	output = 'mdector:fireplace 1',
	recipe = {
		{'default:cobble', 'default:steel_ingot', 'default:cobble'},
		{'default:cobble', 'default:steel_ingot', 'default:cobble'},
		{'default:cobble', 'default:cobble', 'default:cobble'},
	}
})
-- Monochrome Block
minetest.register_node("mdector:monochromeblock", {
	description = "Monochrome Block",
	tiles = {"mdector_monochromeblock.png"},
	inventory_image = minetest.inventorycube("mdector_monochromeblock.png"),
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "facedir",
	drop = "mdector:fireplace",
	groups = {cracky=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'mdector:monochromeblock 1',
	recipe = {
		{'default:cobble', 'default:cobble', 'default:cobble'},
		{'default:cobble', 'dye:black', 'default:cobble'},
		{'default:cobble', 'default:cobble', 'default:cobble'},
	}
})
-- Stone with Diamond
minetest.register_node("mdector:stonewithdiamond", {
	description = "Stone with Diamond Block",
	tiles = {"xmector_stonewithdiamond.png"},
	inventory_image = minetest.inventorycube("mdector_stonewithdiamond.png"),
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "facedir",
	drop = "mdector:stonewithdiamond",
	groups = {cracky=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_craft({
	output = 'mdector:stonewithdiamond 1',
	recipe = {
		{'default:cobble', 'default:cobble', 'default:cobble'},
		{'default:cobble', 'default:diamond', 'default:cobble'},
		{'default:cobble', 'default:cobble', 'default:cobble'},
	}
})
-- Grate1
minetest.register_node("mdector:grate1", {
	description = "Grate 1",
	tiles = {"mdector_grate1.png"},
	inventory_image = minetest.inventorycube("mdector_grate1.png"),
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "facedir",
	drop = "mdector:grate1",
	groups = {cracky=2},
	drawtype = "glasslike",
	legacy_facedir_simple = true,
	is_ground_content = false,
})

minetest.register_craft({
	output = 'mdector:grate1 1',
	recipe = {
		{'default:cobble', 'default:cobble', 'default:cobble'},
		{'default:cobble', 'dye:grey', 'default:cobble'},
		{'default:cobble', 'default:cobble', 'default:cobble'},
	}
})
-- Grate2
minetest.register_node("mdector:grate2", {
	description = "Grate 2",
	tiles = {"mdector_grate2.png"},
	inventory_image = minetest.inventorycube("mdector_grate2.png"),
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "facedir",
	drawtype = "glasslike",
	drop = "mdector:grate2",
	groups = {cracky=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
})

minetest.register_craft({
	output = 'mdector:grate2 1',
	recipe = {
		{'default:cobble', 'default:cobble', 'default:cobble'},
		{'default:cobble', 'dye:black', 'default:cobble'},
		{'default:cobble', 'default:cobble', 'default:cobble'},
	}
})
-- Obsidian Quilt
minetest.register_node("mdector:obsidianquilt", {
	description = "Obsidian Quilt",
	tiles = {"default_obsidian.png^mdector_obsidianquilt.png"},
	inventory_image = minetest.inventorycube("default_obsidian.png^mdector_obsidianquilt.png"),
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "facedir",
	drawtype = "glasslike",
	drop = "mdector:grate2",
	groups = {cracky=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
})
minetest.register_craft({
	output = 'mdector:obsidianquilt 1',
	recipe = {
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
		{'default:obsidian', 'dye:white', 'default:obsidian'},
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
	}
})
-- Plasma Block
minetest.register_node("mdector:plasmablock", {
	description = "Plasma Block",
	tiles = {"mdector_plasmablock.png"},
	inventory_image = minetest.inventorycube("mdector_plasmablock.png"),
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "facedir",
	drawtype = "glasslike",
	drop = "mdector:grate2",
	groups = {cracky=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
})

minetest.register_craft({
	output = 'mdector:plasmablock 1',
	recipe = {
		{'dye:blue', 'dye:blue', 'dye:blue'},
		{'dye:blue', 'default:diamond', 'dye:blue'},
		{'dye:blue', 'dye:blue', 'dye:blue'},
	}
})
-- Framed Diamond Light 2
minetest.register_node("mdector:frameddiamondlight2", {
	drawtype = "glasslike",
	description = "Framed Diamond Light 2",
	tiles = {"mdector_frameddiamondlight2.png"},
	inventory_image = minetest.inventorycube("mdector_frameddiamondlight2.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy=3,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
})
minetest.register_craft({
	output = 'mdector:frameddiamondlight2 1',
	recipe = {
		{'', 'default:diamond', ''},
		{'default:diamond', 'default:meselamp', 'default:diamond'},
		{'', '', ''},
	}
})
-- Table
minetest.register_node("mdector:table", {
	description = "Table",
	tiles = {
		"mdector_table.png",
		"mdector_table2.png",
		"mdector_table1.png",
		"mdector_table1.png",
		"mdector_table1.png",
		"mdector_table1.png",
	},
	inventory_image = minetest.inventorycube("mdector_table.png",
		"mdector_table1.png",
		"mdector_table1.png",
		"mdector_table1.png",
		"mdector_table1.png",
		"mdector_table1.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy=3,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_stone_defaults(),
	
	on_place = minetest.rotate_node
})
minetest.register_craft({
	output = 'mdector:table 1',
	recipe = {
		{'', 'default:wood', ''},
		{'default:wood', 'default:steel_ingot', 'default:wood'},
		{'', 'default:wood', ''},
	}
})
print("[mdector] loaded")
-- Pumpkin
minetest.register_node("mdector:pumpkin", {
	description = "Pumpkin",
	tiles = {
		"mdector_pumpkintop.png",
		"mdector_pumpkinside.png",
		"mdector_pumpkinside.png",
		"mdector_pumpkinside.png",
		"mdector_pumpkinside.png",
		"mdector_pumpkinfront.png",
	},
	inventory_image = minetest.inventorycube("mdector_pumpkintop.png",
		"mdector_pumpkinfront.png",
		"mdector_pumpkinside.png",
		"mdector_pumpkinside.png",
		"mdector_pumpkinfront.png",
		"mdector_pumpkinfront.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy=3,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
})
minetest.register_craft({
	output = 'mdector:pumpkin 1',
	recipe = {
		{'dye:orange', 'default:apple', 'dye:orange'},
		{'default:apple', 'default:apple', 'default:apple'},
		{'dye:orange', 'wool:orange', 'dye:orange'},
	}
})
--mdector_pumpkinfront