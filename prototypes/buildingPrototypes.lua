require ("prototypes.pipeConnectors")
require ("util")




data:extend(
{

-- ITEMS
	{
		type = "item",
		name = "tf-cokery",
		icon = "__Treefarm-AC__/graphics/icons/cokery.png",
		flags = {"goes-to-quickbar"},
		subgroup = "tf-buildings",
		order = "a[cokery]",
		place_result = "tf-cokery-dummy",
		stack_size = 10
	},

	{
		type = "item",
		name = "tf-stone-crusher",
		icon = "__Treefarm-AC__/graphics/icons/stone-crusher.png",
		flags = {"goes-to-quickbar"},
		subgroup = "tf-buildings",
		order = "a[stone-crusher]",
		place_result = "tf-stone-crusher",
		stack_size = 10
	},

	{
		type = "item",
		name = "tf-bioreactor",
		icon = "__Treefarm-AC__/graphics/icons/bioreactor.png",
		flags = {"goes-to-quickbar"},
		subgroup = "tf-buildings",
		order = "a[bioreactor]",
		place_result = "tf-bioreactor",
		stack_size = 10
	},

	{
		type = "item",
		name = "tf-biolab",
		icon = "__Treefarm-AC__/graphics/icons/biolab.png",
		flags = {"goes-to-quickbar"},
		subgroup = "tf-buildings",
		order = "a[biolab]",
		place_result = "tf-biolab",
		stack_size = 10
	},

--RECIPES
	{
		type = "recipe",
		name = "tf-cokery",
		ingredients = {{"stone-furnace",1},{"steel-plate",10}},
		result = "tf-cokery",
		result_count = 1,
		enabled = "false"
	},

	{
		type = "recipe",
		name = "tf-stone-crusher",
		ingredients = {{"iron-plate",10},{"steel-plate",10},{"copper-cable",5},{"iron-gear-wheel",5}},
		result = "tf-stone-crusher",
		enabled = "false",
		result_count = 1
	},

	{
		type = "recipe",
		name = "tf-bioreactor",
		ingredients = {{"assembling-machine-1",1},{"steel-plate",5},{"electronic-circuit",5}},
		result = "tf-bioreactor",
		enabled = "false",
		result_count = 1
	},

	{
		type = "recipe",
		name = "tf-biolab",
		ingredients =
		{
			{"steel-plate", 5},
			{"iron-gear-wheel", 5},
			{"electronic-circuit", 5},
			{"pipe", 5}
		},
		result = "tf-biolab",
		enabled = "false",
		result_count = 1
	},



--ENTITIES
	-- COKERY
	{
    type = "container",
    name = "tf-cokery-dummy",
    icon = "__Treefarm-AC__/graphics/icons/cokery.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "tf-cokery"},
		max_health = 200,
		corpse = "big-remnants",
		resistances = {{type = "fire", percent = 70}},
		collision_box = {{-1.4, -2.0}, {1.4, 2.4}},
		selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    inventory_size = 1,
    picture =
    {
      filename = "__Treefarm-AC__/graphics/entities/cokery/cokery-idle.png",
      priority = "extra-high",
      width = 100,
      height = 160,
      shift = {0.0, 0.0}
    }
  },

	{
		type = "assembling-machine",
		name = "tf-cokery",
		icon = "__Treefarm-AC__/graphics/icons/cokery.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		order = "a[cokery]",
		minable = {hardness = 0.2, mining_time = 0.5, result = "tf-cokery"},
		max_health = 200,
		corpse = "big-remnants",
		resistances = {{type = "fire", percent = 70}},
		collision_box = {{-1.4, -2.0}, {1.4, 2.4}},
		selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
		module_slots = 2,
		allowed_effects = {"consumption", "speed"},

		animation =
		{
			north =
			{
				filename = "__Treefarm-AC__/graphics/entities/cokery/cokery-idle.png",
				width = 100,
				height = 160,
				frame_count = 1,
				line_length = 1,
				shift = {0, 0}
			},
			south =
			{
				filename = "__Treefarm-AC__/graphics/entities/cokery/cokery-idle.png",
				width = 100,
				height = 160,
				frame_count = 1,
				line_length = 1,
				shift = {0, 0}
			},
			west =
			{
				filename = "__Treefarm-AC__/graphics/entities/cokery/cokery-idle.png",
				width = 100,
				height = 160,
				frame_count = 1,
				line_length = 1,
				shift = {0, 0}
			},
			east =
			{
				filename = "__Treefarm-AC__/graphics/entities/cokery/cokery-idle.png",
				width = 100,
				height = 160,
				frame_count = 1,
				line_length = 1,
				shift = {0, 0}
			}
		},
		working_visualisations =
		{

			{
				north_position = { 0.0,  0.0},
				south_position = { 0.0,  0.0},
				west_position  = { 0.0,  0.0},	--{ 1.3, -2.0},
				east_position  = { 0.0,  0.0},	--{ 1.3, -2.0},
			
				animation =
				{
					filename = "__Treefarm-AC__/graphics/entities/cokery/cokery-anim.png",
					frame_count = 28,
					line_length = 14,
					width = 100,
					height = 160,
					scale = 1.0,
					shift = {0, 0},
					animation_speed = 0.1
				}
			}
		},
		crafting_categories = {"treefarm-mod-smelting"},
		energy_source =
		{
			type = "electric",
			input_priority = "secondary",
			usage_priority = "secondary-input",
			emissions = 6 / 3
		},
		energy_usage = "6W",
		crafting_speed = 2,
		ingredient_count = 1
	},
	-- STONECRUSHER
	{
		type = "furnace",
		name = "tf-stone-crusher",
		icon = "__Treefarm-AC__/graphics/icons/stone-crusher.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {hardness = 0.2,mining_time = 0.5,result = "tf-stone-crusher"},
		max_health = 100,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		module_slots = 1,
		resistances = {{type = "fire",percent = 70}},
		working_sound = {
							sound = {
										filename = "__base__/sound/assembling-machine-t1-1.ogg",
										volume = 0.7
									},
							apparent_volume = 1.5
						},
		collision_box = {{-0.9,-0.9},{0.9,0.9}},
		selection_box = {{-1.0,-1.0},{1.0,1.0}},
		animation = {
							filename = "__Treefarm-AC__/graphics/entities/stone-crusher/stone-crusher-off-anim.png",
							priority = "high",
							width = 65,
							height = 78,
							frame_count = 1,
							animation_speed = 0.5,
							shift = {0.0, -0.1}
						},
		working_visualisations = {
							filename = "__Treefarm-AC__/graphics/entities/stone-crusher/stone-crusher-anim.png",
							priority = "high",
							width = 65,
							height = 78,
							frame_count = 11,
							animation_speed = 0.18 / 2.5,
							shift = {0.0, -0.1}
						},
		crafting_categories = {"treefarm-mod-crushing"},
		result_inventory_size = 1,
		source_inventory_size = 1,
		crafting_speed = 1,
		energy_source = {
							type = "electric",
							usage_priority = "secondary-input",
							emissions = 0.05 / 1.5
						},
		energy_usage = "50kW"
	},
	-- BIOREACTOR
	{
		type = "assembling-machine",
		name = "tf-bioreactor",
		icon = "__Treefarm-AC__/graphics/icons/bioreactor.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "tf-bioreactor"},
		max_health = 100,
		corpse = "big-remnants",
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }}
			},
			{
				production_type = "input",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {2, 0} }}
			},
			{
				production_type = "input",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, 2} }}
			},


			{
				production_type = "output",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {-2, -1} }}
			},
			{
				production_type = "output",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {-2, 1} }}
			},
			off_when_no_fluid_recipe = false
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		animation =
		{
			filename = "__Treefarm-AC__/graphics/entities/bioreactor/bioreactor.png",
			priority = "high",
			width = 128,
			height = 150,
			frame_count = 26,
			line_length = 13,
			animation_speed = 0.4,
			shift = {0.55, -0.33}
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		crafting_categories = {"treefarm-mod-bioreactor"},
		ingredient_count = 3,
		crafting_speed = 1,
		energy_usage = "10kW"
	},

	-- BIOLAB
	{
		type = "assembling-machine",
		name = "tf-biolab",
		icon = "__Treefarm-AC__/graphics/icons/biolab.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "tf-biolab"},
		max_health = 300,
		corpse = "big-remnants",
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		module_slots = 2,
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		animation =
		{
			filename = "__Treefarm-AC__/graphics/entities/biolab/biolab.png",
			width = 128,
			height = 128,
			frame_count = 16,
			line_length = 4,
			shift = {0.65, -0.25},
			scale = 1.2,
			animation_speed = 0.25
		},
		working_visualisations =
		{
			{
				north_position = {0.94, -0.73},
				west_position = {-0.3, 0.02},
				south_position = {-0.97, -1.47},
				east_position = {0.05, -1.46},
				animation =
				{
					filename = "__Treefarm-AC__/graphics/icons/empty.png",
					frame_count = 1,
					width = 32,
					height = 32,
					animation_speed = 0.15
				}
			},
			{
				north_position = {1.4, -0.23},
				west_position = {-0.3, 0.55},
				south_position = {-1, -1},
				east_position = {0.05, -0.96},
				north_animation =
				{
					filename = "__Treefarm-AC__/graphics/icons/empty.png",
					frame_count = 1,
					width = 32,
					height = 32,
					animation_speed = 0.15
				},
				west_animation =
				{
					filename = "__Treefarm-AC__/graphics/icons/empty.png",
					frame_count = 1,
					width = 32,
					height = 32,
					animation_speed = 0.15
				},
				south_animation =
				{
					filename = "__Treefarm-AC__/graphics/icons/empty.png",
					frame_count = 1,
					width = 32,
					height = 32,
					animation_speed = 0.15
				}
			}
		},
		crafting_speed = 1,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage = "180kW",
		ingredient_count = 4,
		crafting_categories = {"treefarm-mod-biolab"},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-1, -2} }}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {1, -2} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {-1, 2} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {1, 2} }}
			}
		}
	}
}
)