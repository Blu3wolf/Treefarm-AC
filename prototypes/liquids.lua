   data:extend(
{
	{
		type = "fluid",
		name = "tf-liquid-air",
		default_temperature = -190,
		heat_capacity = "1KJ",
		base_color = {r=0, g=0, b=0},
		flow_color = {r=0.5, g=1.0, b=1.0},
		max_temperature = -186,
		icon = "__Treefarm-AC__/graphics/icons/liquid-air.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[liquid-air]"
	},

	{
		type = "fluid",
		name = "tf-liquid-nitrogen",
		default_temperature = -200,
		heat_capacity = "1KJ",
		base_color = {r=0, g=0, b=0},
		flow_color = {r=0.5, g=1.0, b=1.0},
		max_temperature = -196,
		icon = "__Treefarm-AC__/graphics/icons/liquid-nitrogen.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[liquid-nitrogen]"
	},

	{
		type = "fluid",
		name = "tf-liquid-co2",
		default_temperature = -200,
		heat_capacity = "1KJ",
		base_color = {r=0, g=0, b=0},
		flow_color = {r=1.0, g=1.0, b=1.0},
		max_temperature = -196,
		icon = "__Treefarm-AC__/graphics/icons/liquid-co2.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[liquid-co2]"
	},

	{
		type = "fluid",
		name = "tf-methanol",
		default_temperature = 0,
		heat_capacity = "1KJ",
		base_color = {r=0, g=0, b=0},
		flow_color = {r=0.0, g=0.8, b=0.1},
		max_temperature = 15,
		icon = "__Treefarm-AC__/graphics/icons/methanol.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[methanol]"
	},

	{
		type = "fluid",
		name = "tf-biomass",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=0, g=0, b=0},
		flow_color = {r=0.1, g=1.0, b=0.0},
		max_temperature = 50,
		icon = "__Treefarm-AC__/graphics/icons/biomass.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[biomass]"
	}

}
)