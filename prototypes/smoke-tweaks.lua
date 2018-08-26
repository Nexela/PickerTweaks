-------------------------------------------------------------------------------
--[[Smokeless]]--
-------------------------------------------------------------------------------
-- "name": "Smokeless",
-- "author": "can00336",
-- "description": "Removes UPS-hogging smoke from the game."

if settings.startup["picker-disable-smoke"].value then
    for _, raw_type in pairs(data.raw) do
        for _, entity in pairs(raw_type) do
            if entity.smoke then
                if not (entity.type == "construction-robot" or entity.type == "explosion" or entity.type == "flame-thrower-explosion") then
                    entity.smoke = nil
                end
            end
            if entity.burner then
                if entity.burner.smoke then
                    entity.burner.smoke = nil
                end
            end
            if entity.energy_source then
                if entity.energy_source.smoke then
                    entity.energy_source.smoke = nil
                end
            end
            if entity.type == "locomotive" and entity.stop_trigger then
                if entity.stop_trigger[3] then
                    entity.stop_trigger = entity.stop_trigger[3]
                end
            end
        end
    end
end
