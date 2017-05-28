if settings.startup["Noxys_Fading-tree-stump-fading-time"].value > 0 then
	for k,v in pairs(data.raw.corpse) do
		if k:find("-stump", -6) then
			if data.raw.corpse[k].time_before_removed then
				data.raw.corpse[k].time_before_removed = settings.startup["Noxys_Fading-tree-stump-fading-time"].value
			end
		end
	end
end
if settings.startup["Noxys_Fading-rail-remnants-fading-time"].value > 0 then
	for k,v in pairs(data.raw["rail-remnants"]) do
		if data.raw["rail-remnants"][k].time_before_removed then
			data.raw["rail-remnants"][k].time_before_removed = settings.startup["Noxys_Fading-rail-remnants-fading-time"].value
			data.raw["rail-remnants"][k].time_before_shading_off = math.ceil(settings.startup["Noxys_Fading-rail-remnants-fading-time"].value / 45)
		end
	end
end
-- data.raw.corpse["tree-01-stump"].time_before_removed = 60 * 20
-- data.raw.corpse["tree-02-stump"].time_before_removed = 60 * 20
-- data.raw.corpse["tree-03-stump"].time_before_removed = 60 * 20
-- data.raw.corpse["tree-04-stump"].time_before_removed = 60 * 20
-- data.raw.corpse["tree-05-stump"].time_before_removed = 60 * 20
-- data.raw.corpse["tree-06-stump"].time_before_removed = 60 * 20
-- data.raw.corpse["tree-07-stump"].time_before_removed = 60 * 20
-- data.raw.corpse["tree-08-stump"].time_before_removed = 60 * 20
-- data.raw.corpse["tree-09-stump"].time_before_removed = 60 * 20