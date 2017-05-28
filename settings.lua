data:extend({
	-- Startup
	{
		type = "int-setting",
		name = "Noxys_Fading-tree-stump-fading-time",
		setting_type = "startup",
		minimum_value = 0,
		default_value = 54000,
--		maximum_value = 518400000, -- 100 Days; In most games this should last through a entire playthrough.
		order = "a"
	},
	{
		type = "int-setting",
		name = "Noxys_Fading-rail-remnants-fading-time",
		setting_type = "startup",
		minimum_value = 0,
		default_value = 162000,
--		maximum_value = 518400000, -- 100 Days; In most games this should last through a entire playthrough.
		order = "a"
	},
	-- Global

	-- Per user
	
})
