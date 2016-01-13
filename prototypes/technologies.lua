


data:extend(
{
	{
		type = "technology",
		name = "tf-coal-processing",
		icon = "__Treefarm-AC__/graphics/icons/charcoal.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "tf-charcoal"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-coke-coal"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-ash"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-cokery"
			}
		},
		prerequisites = {
			"advanced-material-processing"
		},
		unit = {
			count = 100,
			ingredients = {
				{"science-pack-1", 1}
			},
			time = 30
		}
	},



	{
		type = "technology",
		name = "tf-coal-processing-2",
		icon = "__Treefarm-AC__/graphics/icons/charcoal_p.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "tf-coal"
			},
		},
		prerequisites = {
			"tf-coal-processing"
		},
		unit = {
			count = 100,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1}
			},
			time = 30
		}
	},

	{
		type = "technology",
		name = "tf-coal-processing-3",
		icon = "__Treefarm-AC__/graphics/icons/charcoal_pp.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "tf-coal-2"
			},
		},
		prerequisites = {
			"tf-coal-processing-2"
		},
		unit = {
			count = 50,
			ingredients = {
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 1}
			},
			time = 30
		}
	},

	{
		type = "technology",
		name = "tf-fertilizer",
		icon = "__Treefarm-AC__/graphics/icons/fertilizer.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "tf-biolab"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-stone-crusher"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-crushed-stone"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-liquid-air"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-liquid-nitrogen"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-fill-liquid-nitrogen-barrel"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-empty-liquid-nitrogen-barrel"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-phosphate"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-potassium"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-fertilizer1"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-fertilizer2"
			}
		},
		prerequisites = {
			"fluid-handling"
		},
		unit = {
			count = 100,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1}
			},
			time = 30
		}
	},

	{
		type = "technology",
		name = "tf-advanced-biotechnology",
		icon = "__Treefarm-AC__/graphics/icons/biomass.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "tf-bioreactor"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-biomass-0"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-biomass-1"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-liquid-co2"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-cellulose"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-methanol1"
			}
		},
		prerequisites = {
			"tf-fertilizer"
		},
		unit = {
			count = 100,
			ingredients = {
				{"science-pack-1", 2},
				{"science-pack-2", 2}
			},
			time = 30
		}
	},

	{
		type = "technology",
		name = "tf-organic-plastic",
		icon = "__Treefarm-AC__/graphics/icons/cellulose.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "tf-platic"
			}
		},
		prerequisites = {
			"tf-advanced-biotechnology"
		},
		unit = {
			count = 50,
			ingredients = {
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 1}
			},
			time = 30
		}
	},

	{
		type = "technology",
		name = "tf-medicine",
		icon = "__Treefarm-AC__/graphics/icons/medicine.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "tf-nutrients"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-medicine"
			}
		},
		prerequisites = {
			"tf-advanced-biotechnology"
		},
		unit = {
			count = 75,
			ingredients = {
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 1}
			},
			time = 45
		}
	},

	{
		type = "technology",
		name = "tf-biological-warfare",
		icon = "__Treefarm-AC__/graphics/icons/poison-rocket.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "tf-glue"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-glue-turret"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-slowdown-rocket"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-poison-rocket"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-flame-thrower-ammo"
			}
		},
		prerequisites = {
			"tf-advanced-biotechnology"
		},
		unit = {
			count = 75,
			ingredients = {
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 1}
			},
			time = 30
		}
	}
}
)