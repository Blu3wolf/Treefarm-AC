data:extend(
{

	-- RECIPE-DUMMY FOR FIELD TO USE FERTILIZER
	{
		type = "recipe",
		name = "fertwork",
		icon = "__Treefarm-AC__/graphics/icons/fertilizer.png",
		subgroup = "raw-material",
		order = "b[charcoal]",
		hidden = true,
		category = "treefarm-mod-dummy",
		energy_required = 18,
		ingredients = {{"tf-fertilizer",101}},
		result = "tf-charcoal",
		result_count = 10,
		enabled = "true"
	},
	-- CHARCOAL
	{
		type = "recipe",
		name = "tf-charcoal",
		icon = "__Treefarm-AC__/graphics/icons/charcoal.png",
		subgroup = "tf-raw-materials",
		order = "b[charcoal]",
		category = "treefarm-mod-smelting",
		energy_required = 36,
		ingredients = {{"raw-wood",20}},
		result = "tf-charcoal",
		result_count = 18,
		enabled = "false"
	},
	-- COAL --
	{
		type = "recipe",
		name = "tf-coal",
		category = "treefarm-mod-smelting",
		subgroup = "tf-raw-materials",
		energy_required = 18,
		ingredients = {{"tf-charcoal",10}},
		result = "coal",
		result_count = 2,
		enabled = "false"
	},

	{
		type = "recipe",
		name = "tf-coal-2",
		category = "treefarm-mod-smelting",
		subgroup = "tf-raw-materials",
		energy_required = 18,
		ingredients = {{"tf-charcoal",10}},
		result = "coal",
		result_count = 4,
		enabled = "false"
	},
	-- COKE-COAL --
	{
		type = "recipe",
		name = "tf-coke-coal",
		category = "treefarm-mod-smelting",
		energy_required = 25,
		ingredients = {{"coal",10}},
		result = "tf-coke-coal",
		result_count = 10,
		enabled = "false"
	},
	-- ASH --
	{
		type = "recipe",
		name = "tf-ash",
		category = "treefarm-mod-smelting",
		energy_required = 10,
		ingredients = {{"raw-wood",5}},
		result = "tf-ash",
		result_count = 5,
		enabled = "false"
	},   
	-- CRUSHED STONE
	{
		type = "recipe",
		name = "tf-crushed-stone",
		category = "treefarm-mod-crushing",
		energy_required = 5,
		ingredients = {{"stone",1}},
		result = "tf-crushed-stone",
		result_count = 2,
		enabled = "false"
	},
	-- LIQUID-AIR --
	{
		type = "recipe",
		name = "tf-liquid-air",
		category = "treefarm-mod-biolab",
		subgroup = "tf-liquids",
		energy_required = 10,
		ingredients = {},
		results=
		{
			{type = "fluid", name = "tf-liquid-air", amount = 1}
		},
		enabled = "false"
	},
	-- LIQUID-NITROGEN --
	{
		type = "recipe",
		name = "tf-liquid-nitrogen",
		category = "treefarm-mod-biolab",
		subgroup = "tf-liquids",
		energy_required = 10,
		ingredients ={{type="fluid", name="tf-liquid-air", amount=2}},
		results=
		{
			{type="fluid", name="tf-liquid-nitrogen", amount=1}
		},
		enabled = "false"
	},
	-- LIQUID CO2
	{
		type = "recipe",
		name = "tf-liquid-co2",
		category = "treefarm-mod-biolab",
		subgroup = "tf-liquids",
		energy_required = 10,
		ingredients ={{type="fluid", name="tf-liquid-air", amount=1}},
		results=
		{
			{type="fluid", name="tf-liquid-co2", amount=1}
		},
		enabled = "false"
	},
	-- METHANOL
	{
		type = "recipe",
		name = "tf-methanol1",
		icon = "__Treefarm-AC__/graphics/icons/methanol.png",
		category = "treefarm-mod-bioreactor",
		order = "a[fluid]-b[methanol]",
		subgroup = "tf-intermediate",
		energy_required = 60,
		ingredients =
		{
			{type="fluid", name="tf-biomass", amount = 1.0}
		},
		results=
		{
			{type="fluid", name="tf-biomass", amount = 0.5},
			{type="fluid", name="tf-methanol", amount = 0.5}
		},
		enabled = "false"
	},
	-- FILL NITROGEN-BARREL --
	{
		type = "recipe",
		name = "tf-fill-liquid-nitrogen-barrel",
		category = "crafting-with-fluid",
		energy_required = 1,
		subgroup = "tf-liquids",
		order = "b[fill-liquid-nitrogen-barrel]",
		icon = "__Treefarm-AC__/graphics/icons/fill-liquid-nitrogen-barrel.png",
		ingredients =
		{
			{type="fluid", name="tf-liquid-nitrogen", amount=25},
			{type="item", name="empty-barrel", amount=1},
		},
		results=
		{
			{type="item", name="tf-liquid-nitrogen-barrel", amount=1}
		},
		enabled = "false"
	},
	-- EMPTY NITROGEN-BARREL --
	{
		type = "recipe",
		name = "tf-empty-liquid-nitrogen-barrel",
		category = "crafting-with-fluid",
		energy_required = 1,
		subgroup = "tf-liquids",
		order = "c[empty-liquid-nitrogen-barrel]",
		icon = "__Treefarm-AC__/graphics/icons/empty-liquid-nitrogen-barrel.png",
		ingredients =
		{
		  {type="item", name="tf-liquid-nitrogen-barrel", amount=1}
		},
		results=
		{
			{type="fluid", name="tf-liquid-nitrogen", amount=25},
			{type="item", name="empty-barrel", amount=1}
		},
		enabled = "false"
	},
	-- PHOSPHATE --
	{
		type = "recipe",
		name = "tf-phosphate",
		category = "chemistry",
		energy_required = 5,
		icon = "__Treefarm-AC__/graphics/icons/phosphate.png",
		ingredients =
		{
		  {type="item", name="tf-crushed-stone", amount=3},
		  {type="item", name="science-pack-1", amount=1},
		  {type="fluid", name="water", amount=5}
		},
		results=
		{
			{type="item", name="tf-phosphate", amount=1}
		},
		enabled = "false"
	},
	-- POTASSIUM --
	{
		type = "recipe",
		name = "tf-potassium",
		category = "chemistry",
		energy_required = 5,
		icon = "__Treefarm-AC__/graphics/icons/potassium.png",
		ingredients =
		{
		  {type="item", name="tf-crushed-stone", amount=3},
		  {type="item", name="science-pack-1", amount=1},
		  {type="fluid", name="water", amount=5}
		},
		results=
		{
			{type="item", name="tf-potassium", amount=1}
		},
		enabled = "false"
	},
	-- FERTILIZER SOLID --
	{
		type = "recipe",
		name = "tf-fertilizer1",
		category = "chemistry",
		energy_required = 125,
		icon = "__Treefarm-AC__/graphics/icons/fertilizer.png",
		ingredients =
		{
			{type="item", name="tf-phosphate", amount=25},
			{type="item", name="tf-potassium", amount=50},
			{type="item", name="tf-liquid-nitrogen-barrel", amount=1},
			{type="item", name="tf-ash", amount=125}
		},
		results=
		{
			{type="item", name="tf-fertilizer", amount=100}
		},
		enabled = "false"
	},
	-- FERTILIZER LIQUID --
	{
		type = "recipe",
		name = "tf-fertilizer2",
		category = "chemistry",
		energy_required = 5,
		icon = "__Treefarm-AC__/graphics/icons/fertilizer.png",
		ingredients =
		{
			{type="item", name="tf-phosphate", amount=1},
			{type="item", name="tf-potassium", amount=2},
			{type="fluid", name="tf-liquid-nitrogen", amount=1},
			{type="item", name="tf-ash", amount=6}
		},
		results=
		{
			{type="item", name="tf-fertilizer", amount=5}
		},
		enabled = "false"
	},
	-- BIOMASS --
	{
		type = "recipe",
		name = "tf-biomass-0",
		icon = "__Treefarm-AC__/graphics/icons/biomass.png",
		subgroup = "tf-intermediate",
		category = "treefarm-mod-bioreactor",
		energy_required = 10,
		ingredients =
		{
			{type="fluid", name="water", amount=10},
			{type="fluid", name="tf-liquid-co2", amount=1},
			{type="item", name="tf-fertilizer", amount=1}
		},
		results=
		{
			{type="fluid", name="tf-biomass", amount=0.5},
			{type="fluid", name="tf-biomass", amount=0.5}
		},
		enabled = "false"
	},
	{
		type = "recipe",
		name = "tf-biomass-1",
		icon = "__Treefarm-AC__/graphics/icons/biomass.png",
		subgroup = "tf-intermediate",
		category = "treefarm-mod-bioreactor",
		energy_required = 10,
		ingredients =
		{
			{type="fluid", name="water", amount=10},
			{type="fluid", name="tf-biomass", amount=0.99},
			{type="item", name="tf-fertilizer", amount=1}
		},
		results=
		{
			{type="fluid", name="tf-biomass", amount=1},
			{type="fluid", name="tf-biomass", amount=1}
		},
		enabled = "false"
	},
	-- CELLULOSE --
	{
		type = "recipe",
		name = "tf-cellulose",
		category = "treefarm-mod-biolab",
		energy_required = 10,
		ingredients =
		{
			{type="fluid", name="tf-biomass", amount=1.6}
		},
		results=
		{
			{type="item", name="tf-cellulose", amount=1 }
		},
		enabled = "false"
	},
	-- PLASTIC --
	{
		type = "recipe",
		name = "tf-platic",
		category = "treefarm-mod-biolab",
		subgroup = "tf-intermediate",
		energy_required = 1,
		ingredients =
		{
			{type="item", name="tf-cellulose", amount=2}
		},
		results=
		{
			{type="item", name="plastic-bar", amount=1}
		},
		enabled = "false"
	},
	-- NUTRIENTS --
	{
		type = "recipe",
		name = "tf-nutrients",
		category = "treefarm-mod-biolab",
		energy_required = 20,
		ingredients =
		{
			{type="fluid", name="tf-biomass", amount=20}
		},
		results=
		{
			{type="item", name="tf-nutrients", amount=1}
		},
		enabled = "false"
	},
	-- MEDICINE --
	{
		type = "recipe",
		name = "tf-medicine",
		category = "treefarm-mod-biolab",
		energy_required = 20,
		ingredients =
		{
			{type="item", name="tf-nutrients", amount=10}
		},
		results=
		{
			{type="item", name="tf-medicine", amount=1}
		},
		enabled = "false"
	}
}
)

