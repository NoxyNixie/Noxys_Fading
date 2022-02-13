local building_remnants = { -- 60 * 60 * 15
	["big-remnants"] = true,
	["medium-remnants"] = true,
	["small-remnants"] = true,
	["wall-remnants"] = true,
}
local biter_corspes = { -- 60 * 60 * 15
	"-biter-",
	"-spawner-",
	"-spitter-",
	"-spiter-", -- Blame McGuten
	"-worm-",
}

if settings.startup["Noxys_Fading-tree-stump-fading-time"].value +
	settings.startup["Noxys_Fading-biter-fading-time"].value +
	settings.startup["Noxys_Fading-building-fading-time"].value +
	settings.startup["Noxys_Fading-rail-fading-time"].value > 0 then
	for k,_ in pairs(data.raw.corpse) do
		if settings.startup["Noxys_Fading-tree-stump-fading-time"].value > 0 then
			if k:find("-stump", -6) then
				data.raw.corpse[k].time_before_removed = settings.startup["Noxys_Fading-tree-stump-fading-time"].value
			end
		end
		if settings.startup["Noxys_Fading-biter-fading-time"].value > 0 then
			for _,s in pairs(biter_corspes) do
				if k:find(s) then
					data.raw.corpse[k].time_before_removed = settings.startup["Noxys_Fading-biter-fading-time"].value
				end
			end
		end
		if settings.startup["Noxys_Fading-building-fading-time"].value > 0 then
			if building_remnants[k] then
				data.raw.corpse[k].time_before_removed = settings.startup["Noxys_Fading-building-fading-time"].value
			end
		end
	end
	if settings.startup["Noxys_Fading-rail-fading-time"].value > 0 then
		for k,_ in pairs(data.raw["rail-remnants"]) do
			data.raw["rail-remnants"][k].time_before_removed = settings.startup["Noxys_Fading-rail-fading-time"].value
			data.raw["rail-remnants"][k].time_before_shading_off = math.ceil(settings.startup["Noxys_Fading-rail-fading-time"].value / 45)
		end
	end
end
if settings.startup["Noxys_Fading-character-fading-time"].value > 0 then
	for k,_ in pairs(data.raw["character-corpse"]) do
		data.raw["character-corpse"][k].time_to_live = settings.startup["Noxys_Fading-character-fading-time"].value
	end
end
local footfade = settings.startup["Noxys_Fading-character-footprint-fading-time"].value
if footfade > 0 then
  if footfade < 2 then
    footfade = 2
  end
  data.raw["optimized-particle"]["character-footprint-particle"].life_time = footfade
  if footfade < data.raw["optimized-particle"]["character-footprint-particle"].fade_away_duration then
    data.raw["optimized-particle"]["character-footprint-particle"].fade_away_duration = footfade
  end
end