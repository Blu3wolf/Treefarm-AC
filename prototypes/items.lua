   data:extend(
{
	{
		type = "item",
		name = "tf-charcoal",
		icon = "__Treefarm-AC__/graphics/icons/charcoal.png",
		flags = {"goes-to-main-inventory"},
		fuel_value = "6MJ",
		subgroup = "tf-raw-materials",
		order = "b[charcoal]",
		stack_size = 50
	},  

	{
		type = "item",
		name = "tf-coke-coal",
		icon = "__Treefarm-AC__/graphics/icons/coke-coal.png",
		flags = {"goes-to-main-inventory"},
		fuel_value = "10MJ",
		subgroup = "tf-raw-materials",
		order = "b[coke-coal]",
		stack_size = 50
	},

	{
		type = "item",
		name = "tf-ash",
		icon = "__Treefarm-AC__/graphics/icons/ash.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "tf-raw-materials",
		order = "b[ash]",
		stack_size = 200
	},

	{
		type = "item",
		name = "tf-crushed-stone",
		icon = "__Treefarm-AC__/graphics/icons/crushed-stone.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "tf-raw-materials",
		order = "b[crushed-stone]",
		stack_size = 100
	},

	{
		type = "item",
		name = "tf-phosphate",
		icon = "__Treefarm-AC__/graphics/icons/phosphate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "tf-intermediate",
		order = "b[phosphate]",
		stack_size = 100
	},

	{
		type = "item",
		name = "tf-potassium",
		icon = "__Treefarm-AC__/graphics/icons/potassium.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "tf-intermediate",
		order = "b[potassium]",
		stack_size = 100
	},

	{
		type = "item",
		name = "tf-fertilizer",
		icon = "__Treefarm-AC__/graphics/icons/fertilizer.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "tf-tools",
		order = "b[fertilizer]",
		stack_size = 100
	},

	{
		type = "item",
		name = "tf-liquid-nitrogen-barrel",
		icon = "__Treefarm-AC__/graphics/icons/liquid-nitrogen-barrel.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "tf-intermediate",
		order = "b[liquid-nitrogen-barrel]",
		stack_size = 10
	},

	{
		type = "item",
		name = "tf-cellulose",
		icon = "__Treefarm-AC__/graphics/icons/cellulose.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "tf-intermediate",
		order = "b[cellulose]",
		stack_size = 200
	},

	{
		type = "item",
		name = "tf-nutrients",
		icon = "__Treefarm-AC__/graphics/icons/nutrients.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "tf-intermediate",
		order = "b[nutrients]",
		stack_size = 50
	},

	{
		type = "capsule",
		name = "tf-medicine",
		icon = "__Treefarm-AC__/graphics/icons/medicine.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "tf-tools",
		order = "b[medicine]",
		stack_size = 10,
		capsule_action =
		{
			type = "use-on-self",
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "capsule",
				cooldown = 30,
				range = 0,
				ammo_type =
				{
					category = "capsule",
					target_type = "position",
					action =
					{
						type = "direct",
						action_delivery =
						{
							type = "instant",
							target_effects = 
							{
								type = "damage",
								damage = {type = "physical", amount = -50}
							}
						}
					}
				}
			}
		}
	}
}
)