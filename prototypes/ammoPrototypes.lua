


tf_gun_turret_extension =
{
  filename = "__Treefarm-AC__/graphics/entities/glue-turret/glue-turret-extension.png",
  priority = "medium",
  width = 88,
  height = 80,
  direction_count = 4,
  frame_count = 1,
  axially_symmetrical = false,
  shift = {0.2, -0.6}
}



data:extend(
{

	{
		type = "ammo-category",
		name = "tf-glue-ammo"
	},

-- ITEMS

	-- GLUE
	{
		type = "item",
		name = "tf-glue",
		icon = "__Treefarm-AC__/graphics/icons/glue.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "tf-intermediate",
		order = "b[glue]",
		stack_size = 50
	},


	-- GLUE-TURRET
	{
		type = "item",
		name = "tf-glue-turret",
		icon = "__Treefarm-AC__/graphics/icons/glue-turret.png",
		flags = {"goes-to-quickbar"},
		subgroup = "tf-war",
		order = "b[turret]-a[glue-turret]",
		place_result = "tf-glue-turret",
		stack_size = 10
	},


-- RECIPES

	-- FLAMETHROWER-AMMO
	{
		type = "recipe",
		name = "tf-flame-thrower-ammo",
		category = "crafting-with-fluid",
		subgroup = "tf-war",
		enabled = "false",
		energy_required = 10,
		ingredients =
		{
			{type = "item", name = "steel-plate", amount = 2},
			{type = "fluid", name = "tf-methanol", amount = 10},
		},
		result = "flame-thrower-ammo"
	},

	--GLUE
	{
		type = "recipe",
		name = "tf-glue",
		category = "treefarm-mod-biolab",
		energy_required = 10,
		ingredients =
		{
			{type = "fluid", name = "tf-methanol", amount = 1},
			{type = "item", name = "tf-cellulose", amount = 1}
		},
		results=
		{
			{type = "item", name = "tf-glue", amount = 1}
		},
		enabled = "false"
	},

	-- ROCKETS
	{
		type = "recipe",
		name = "tf-slowdown-rocket",
		category = "crafting",
		energy_required = 10,
		ingredients =
		{
			{type = "item", name = "tf-glue", amount = 5},
			{type = "item", name = "slowdown-capsule", amount = 1},
      {type = "item", name = "rocket", amount = 1}
		},
		results=
		{
			{type = "item", name = "tf-slowdown-rocket", amount = 1}
		},
		enabled = "false"
	},

	{
		type = "ammo",
		name = "tf-slowdown-rocket",
		icon = "__Treefarm-AC__/graphics/icons/slowdown-rocket.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "tf-glue-ammo",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "projectile",
					projectile = "slowdown-capsule",
					starting_speed = 0.1,
					source_effects =
					{
						type = "create-entity",
						entity_name = "explosion-gunshot"
					}
				}
			}
		},
		subgroup = "tf-war",
		order = "d[rocket-launcher]-b[slowdown-rocket]",
		stack_size = 100
	},

	{
		type = "recipe",
		name = "tf-poison-rocket",
		category = "crafting",
		energy_required = 10,
		ingredients =
		{
			{type = "item", name = "tf-glue", amount = 5},
			{type = "item", name = "poison-capsule", amount = 1},
      {type = "item", name = "rocket", amount = 1}
		},
		results=
		{
			{type = "item", name = "tf-poison-rocket", amount = 1}
		},
		enabled = "false"
	},

	{
		type = "ammo",
		name = "tf-poison-rocket",
		icon = "__Treefarm-AC__/graphics/icons/poison-rocket.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "tf-glue-ammo",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "projectile",
					projectile = "poison-capsule",
					starting_speed = 0.1,
					source_effects =
					{
						type = "create-entity",
						entity_name = "explosion-gunshot"
					}
				}
			}
		},
		subgroup = "tf-war",
		order = "d[rocket-launcher]-b[posion-rocket]",
		stack_size = 100
	},


	-- GLUE-TURRET
	{
		type = "recipe",
		name = "tf-glue-turret",
		category = "crafting",
		energy_required = 1,
		ingredients =
		{
			{type = "item", name = "gun-turret", amount = 1},
			{type = "item", name = "electronic-circuit", amount = 10}
		},
		results=
		{
			{type = "item", name = "tf-glue-turret", amount = 1}
		},
		enabled = "false"
	},

-- ENTITIES

	-- GLUE-TURRET
	{
    type = "ammo-turret",
    name = "tf-glue-turret",
    icon = "__Treefarm-AC__/graphics/icons/glue-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "tf-glue-turret"},
    max_health = 200,
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    rotation_speed = 0.015,
    preparing_speed = 0.08,
    folding_speed = 0.08,
    dying_explosion = "medium-explosion",
    inventory_size = 1,
    automated_ammo_count = 10,
    folded_animation = (function()
                          local res = util.table.deepcopy(tf_gun_turret_extension)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = tf_gun_turret_extension,
    prepared_animation =
    {
      filename = "__Treefarm-AC__/graphics/entities/glue-turret/glue-turret.png",
      priority = "medium",
      width = 88,
      height = 80,
      direction_count = 64,
      frame_count = 1,
      line_length = 16,
      axially_symmetrical = false,
      shift = {0.2, -0.6}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(tf_gun_turret_extension)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__Treefarm-AC__/graphics/icons/empty.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      shift = {0, 0}
    },
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters =
		{
        type = "projectile",
				ammo_category = "tf-glue-ammo",
				cooldown = 60 * 30,
				projectile_center = {0, 0.6},
				projectile_creation_distance = 1.2,
				shell_particle = 
			{
				name = "shell-particle",
				direction_deviation = 0.1,
				speed = 0.1,
				speed_deviation = 0.03,
				center = {0, 0.6},
				creation_distance = 0.6,
				starting_frame_speed = 0.2,
				starting_frame_speed_deviation = 0.1
			},
			range = 17,
			sound = make_heavy_gunshot_sounds()
		},
    call_for_help_radius = 40
	}
}
)