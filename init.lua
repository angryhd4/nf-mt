minetest.register_node("nuclear_factions:block_of_forbidden", {
	description = ("The Forbidden Block"),
	tiles = {"forbidden_block.png"},
	groups = {stone=2, cracky=3},
	drop = "nuclear_factions:block_of_forbidden",
	is_ground_content = true,
})
minetest.register_craftitem('nuclear_factions:healing_gem', {
    description = 'Healing Gem(Fully Heals You)',
    short_description = 'Healing Gem',
    inventory_image = 'healing_gem.png',
    wield_scale = { x = 2, y = 2, z = 1 },
    on_use = function(itemstack, user, pointed_thing)
        if not user then
            return
        end

        user:set_hp(20)
        itemstack:take_item()
        return itemstack
    end
})
minetest.register_node("nuclear_factions:fake_diamondblock", {
	description = ("Fake Diamond Block"),
	tiles = {"default_diamond_block.png"},
	groups = {stone=2, cracky=3},
	drop = "nuclear_factions:fake_diamondblock",
	is_ground_content = true,
})
minetest.register_craft({
    output = 'nuclear_factions:fake_diamondblock',
    recipe = {
        { '', 'wool:cyan', '' },
        { 'wool:cyan', 'default:cobble', 'wool:cyan' },
        { '', 'wool:cyan', '' },
    }
})
minetest.register_craft({
    output = 'nuclear_factions:forbidden_shard',
    recipe = {
        { 'default:diamondblock', 'default:diamondblock', 'default:diamondblock' },
        { 'default:diamondblock', 'default:mese', 'default:diamondblock' },
        { 'default:diamondblock', 'default:diamondblock', 'default:diamondblock' },
    }
})
minetest.register_craftitem("nuclear_factions:forbidden_shard", {
	description = ("Forbidden Shard"),
	inventory_image = "forbidden_shard.png",
})
minetest.register_craftitem("nuclear_factions:forbidden_ingot", {
	description = ("Forbidden Ingot"),
	inventory_image = "forbidden_ingot.png",
})
minetest.register_craft({
    output = 'nuclear_factions:forbidden_ingot',
    recipe = {
        { 'nuclear_factions:forbidden_shard', 'nuclear_factions:forbidden_shard', 'nuclear_factions:forbidden_shard' },
        { 'nuclear_factions:forbidden_shard', 'nuclear_factions:forbidden_shard', 'nuclear_factions:forbidden_shard' },
        { 'nuclear_factions:forbidden_shard', 'nuclear_factions:forbidden_shard', 'nuclear_factions:forbidden_shard' },
    }
})
minetest.register_craft({
    output = 'nuclear_factions:block_of_forbidden',
    recipe = {
        { 'nuclear_factions:forbidden_ingot', 'nuclear_factions:forbidden_ingot', 'nuclear_factions:forbidden_ingot' },
        { 'nuclear_factions:forbidden_ingot', 'nuclear_factions:forbidden_ingot', 'nuclear_factions:forbidden_ingot' },
        { 'nuclear_factions:forbidden_ingot', 'nuclear_factions:forbidden_ingot', 'nuclear_factions:forbidden_ingot' },
    }
})
minetest.register_craftitem("nuclear_factions:empty_glass_orb", {
	description = ("Empty Glass Orb"),
	inventory_image = "empty_orb.png",
})
minetest.register_craftitem("nuclear_factions:healing_potion", {
	description = ("Healing Potion"),
	inventory_image = "healing_potion.png",
})
minetest.register_craft({
    output = 'nuclear_factions:healing_potion',
    recipe = {
        { 'default:cactus', 'default:aspen_leaves', 'default:pine_needles' },
        { 'default:papyrus', 'default:apple', 'default:junglesapling' },
        { '', 'default:glass_bottle', '' },
    }
})
minetest.register_craft({
    output = 'nuclear_factions:healing_gem',
    recipe = {
        { '', 'nuclear_factions:empty_glass_orb', '' },
        { '', 'nuclear_factions:healing_potion', '' },
    }
})
minetest.register_node("nuclear_factions:limestone_ore", {
		tiles = {
				"default_stone.png^limestone_ore.png"
		},
		groups = {cracky = 3},
		drop = "nuclear_factions:limestone_ore",
		description = ("Limestone Ore"),
		is_ground_content = true,
		legacy_mineral = true,
		light_source = 0,
		sounds = default.node_sound_stone_defaults(),
})
minetest.register_craftitem("nuclear_factions:limestone", {
	description = ("Limestone"),
	inventory_image = "limestone.png",
})
minetest.register_craft({
	type = "cooking",
	output = "nuclear_factions:limestone",
	recipe = "nuclear_factions:limestone_ore",
	cooktime = 20,
})
minetest.register_tool("nuclear_factions:forbidden_blade", {
	description = ("The Forbidden Blade"),
        visual_size = { x = 2, y = 2 },
        wield_scale = { x = 3, y = 3, z = 2 },
	inventory_image = "forbidden_blade.png",
	tool_capabilities = {
		full_punch_interval = 5.0,
		max_drop_level = 6,
		groupcaps = {
			fleshy = {times = {[3] = 0.70, [3] = 0.30}, uses = 300, maxlevel = 1},
			snappy = {times = {[2] = 0.70, [3] = 0.30}, uses = 300, maxlevel = 1},
			choppy = {times = {[3] = 0.80}, uses = 100, maxlevel = 0}
		},
		damage_groups = {fleshy = 120},
	},
	sound = {breaks = "default_tool_breaks"},
})
minetest.register_craft({
    output = 'nuclear_factions:forbidden_blade',
    recipe = {
        { '', 'nuclear_factions:forbidden_ingot', '' },
        { '', 'nuclear_factions:forbidden_ingot', '' },
        { '', 'nuclear_factions:limestone', '' },
    }
})
minetest.register_tool("nuclear_factions:forbidden_spear", {
	description = "Forbidden Spear",
	inventory_image = "forbidden_spear.png",
	range = 20,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=23, maxlevel=3},
		},
		damage_groups = {fleshy=60},
	}
})
minetest.register_craft({
    output = 'nuclear_factions:forbidden_spear',
    recipe = {
        { '', 'nuclear_factions:forbidden_ingot', '' },
        { '', 'nuclear_factions:limestone', '' },
        { '', 'nuclear_factions:limestone', '' },
    }
})
minetest.register_tool("nuclear_factions:forbidden_boots", {
	description = ("Forbidden Boots"),
	inventory_image = "forbidden_boots_inv.png",
	groups = {armor_feet=40, armor_heal=25, armor_use=700, physics_jump=1, physics_speed=2},
	wear = 0,
})
minetest.register_craftitem("nuclear_factions:lvl_one_lava_orb", {
	description = ("Lava Orb(LVL1)"),
	inventory_image = "lvl_1_lava_orb.png",
})
minetest.register_craftitem("nuclear_factions:lvl_two_lava_orb", {
	description = ("Lava Orb(LVL2)"),
	inventory_image = "lvl_2_lava_orb.png",
})
minetest.register_craftitem("nuclear_factions:lvl_three_lava_orb", {
	description = ("Lava Orb(LVL3)"),
	inventory_image = "lvl_3_lava_orb.png",
})
minetest.register_craftitem("nuclear_factions:lvl_four_lava_orb", {
	description = ("Lava Orb(LVL4)"),
	inventory_image = "lvl_4_lava_orb.png",
})
minetest.register_craftitem("nuclear_factions:lvl_five_lava_orb", {
	description = ("Lava Orb(LVL5)"),
	inventory_image = "lvl_5_lava_orb.png",
})
minetest.register_craftitem("nuclear_factions:lvl_six_lava_orb", {
	description = ("Lava Orb(LVL6)"),
	inventory_image = "lvl_6_lava_orb.png",
})
minetest.register_craftitem("nuclear_factions:lvl_seven_lava_orb", {
	description = ("Lava Orb(LVL7)"),
	inventory_image = "lvl_7_lava_orb.png",
})
minetest.register_craftitem("nuclear_factions:lvl_eight_lava_orb", {
	description = ("Lava Orb(LVL8)"),
	inventory_image = "lvl_8_lava_orb.png",
})
minetest.register_craftitem("nuclear_factions:enhanced_lvl_eight_lava_orb", {
	description = ("Enhanced Lava Orb(LVL8)"),
	inventory_image = "enhanced_lvl_8_lava_orb.png",
})
minetest.register_craft({
    output = 'nuclear_factions:lvl_one_lava_orb',
    recipe = {
        { 'bucket:bucket_lava', 'bucket:bucket_lava', 'bucket:bucket_lava' },
        { 'bucket:bucket_lava', 'nuclear_factions:empty_glass_orb', 'bucket:bucket_lava' },
        { 'bucket:bucket_lava', 'bucket:bucket_lava', 'bucket:bucket_lava' },
    }
})
minetest.register_craft({
    output = 'nuclear_factions:lvl_two_lava_orb',
    recipe = {
        { 'nuclear_factions:lvl_one_lava_orb', '', '' },
        { 'nuclear_factions:lvl_one_lava_orb', '', '' },
        { '', '', '' },
    }
})
minetest.register_craft({
    output = 'nuclear_factions:lvl_three_lava_orb',
    recipe = {
        { 'nuclear_factions:lvl_one_lava_orb', '', '' },
        { 'nuclear_factions:lvl_one_lava_orb', '', '' },
        { 'nuclear_factions:lvl_one_lava_orb', '', '' },
    }
})
minetest.register_craft({
    output = 'nuclear_factions:lvl_three_lava_orb',
    recipe = {
        { 'nuclear_factions:lvl_one_lava_orb', '', '' },
        { 'nuclear_factions:lvl_two_lava_orb', '', '' },
        { '', '', '' },
    }
})
minetest.register_craft({
    output = 'nuclear_factions:lvl_four_lava_orb',
    recipe = {
        { 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb', '' },
        { 'nuclear_factions:lvl_one_lava_orb', '', '' },
        { 'nuclear_factions:lvl_one_lava_orb', '', '' },
    }
})
minetest.register_craft({
    output = 'nuclear_factions:lvl_four_lava_orb',
    recipe = {
        { 'nuclear_factions:lvl_two_lava_orb', '', '' },
        { 'nuclear_factions:lvl_two_lava_orb', '', '' },
        { '', '', '' },
    }
})
minetest.register_craft({
    output = 'nuclear_factions:lvl_five_lava_orb',
    recipe = {
        { 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb', '' },
        { 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb', '' },
        { 'nuclear_factions:lvl_one_lava_orb', '', '' },
    }
})
minetest.register_craft({
    output = 'nuclear_factions:lvl_six_lava_orb',
    recipe = {
        { 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb', '' },
        { 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb', '' },
        { 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb', '' },
    }
})
minetest.register_craft({
    output = 'nuclear_factions:lvl_six_lava_orb',
    recipe = {
        { 'nuclear_factions:lvl_three_lava_orb', '', '' },
        { 'nuclear_factions:lvl_three_lava_orb', '', '' },
        { '', '', '' },
    }
})
minetest.register_craft({
    output = 'nuclear_factions:lvl_seven_lava_orb',
    recipe = {
        { 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb' },
        { 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb', '' },
        { 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb', '' },
    }
})
minetest.register_craft({
    output = 'nuclear_factions:lvl_eight_lava_orb',
    recipe = {
        { 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb' },
        { 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb' },
        { 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb', '' },
    }
})
minetest.register_craft({
    output = 'nuclear_factions:enhanced_lvl_eight_lava_orb',
    recipe = {
        { 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb' },
        { 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:forbidden_shard', 'nuclear_factions:lvl_one_lava_orb' },
        { 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb', 'nuclear_factions:lvl_one_lava_orb' },
    }
})
minetest.register_craftitem("nuclear_factions:simple_burger", {
	description = ("Simple Burger"),
	inventory_image = "Burger.png",
	on_use = minetest.item_eat(3),
})
minetest.register_craft({
    output = 'nuclear_factions:simple_burger',
    recipe = {
        { '', 'farming:bread_slice', '' },
        { 'mobs:meat', 'farming:tomato', 'farming:lettuce' },
        { '', 'farming:bread_slice', '' },
    }
})
---------Nerf Gun
minetest.register_tool("nuclear_factions:nerf_gun", {
	description = "Nerf Gun",
	inventory_image = "nerf_gun.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "default:dirt 1") then
			minetest.sound_play("empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "default:dirt")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "default:water_source")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})
local XTRAORES_DB = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=0.075, y=0.075,},
	textures = {'xtraores_old_shot.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
XTRAORES_DB.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.08 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 2)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xtraores:db" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 25
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 25
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("nuclear_factions:db", XTRAORES_DB )
--End Of Nerf Gun
minetest.register_tool("nuclear_factions:forbidden_helmet", {
	description = ("Forbidden Helmet"),
	inventory_image = "forbidden_boots_inv.png",
	groups = {armor_head=40, armor_heal=30, armor_use=700},
	wear = 0,
})
minetest.register_craftitem("nuclear_factions:iphone_twelve_purple_design", {
	description = ("iPhone 12(Violet)"),
	inventory_image = "nf_iphone_12_purple_design.png",
on_secondary_use = function(itemstack, user, pointed_thing)
		local w = itemstack:get_wear()
		itemstack = ItemStack("nuclear_factions:iphone_twelve_purple_design_back")
		itemstack:set_wear(w)
		return itemstack
	end,
})
minetest.register_craftitem("nuclear_factions:iphone_twelve_purple_design_back", {
	description = ("iPhone 12(Violet)"),
	inventory_image = "lvl_1_lava_orb.png",
groups = { not_in_creative_inventory = 1 },
on_secondary_use = function(itemstack, user, pointed_thing)
		local w = itemstack:get_wear()
		itemstack = ItemStack("nuclear_factions:iphone_twelve_purple_design")
		itemstack:set_wear(w)
		return itemstack
	end,
})