--Make construction and logistic robots unminable (no plucking them from the air)
--Also removes them from going to the quickbar.
--Based on Small-Fixes by Choumiko

local Data = require('__stdlib__/stdlib/data/data')

local types = {'construction-robot', 'logistic-robot'}
local bots = {}

--Make them un-minable and fire proof and show on map
for index, bot in pairs(types) do
    for _, entity in pairs(data.raw[bot]) do
        bots[entity.name] = true
        if bot == 'construction-robot' then
            if settings.startup['picker-unminable-construction-robots'].value then
                entity.minable = nil
            end
            if settings.startup['picker-fireproof-construction-robots'].value then
                entity.resistances = entity.resistances or {}
                table.insert(entity.resistances, {type = 'fire', percent = 100})
            end
        end
        if bot == 'logistic-robot' and settings.startup['picker-unminable-logistic-robots'].value then
            entity.minable = nil
        end
        if settings.startup['picker-show-bots-on-map'].value then
            -- "name": "ShowBotsOnMap",
            -- "description": "Now you can see your robots on the map",
            -- "title": "Show Bots On Map",
            -- "author": "darkfrei",
            entity = Data(entity)
            entity:Flags():remove('not-on-map')
            entity.map_color = {r = index - 1, g = index - 1, b = index - 1}
        end
    end
end

--Remove goes-to-quickbar
for _, item in pairs(data.raw['item']) do
    if item.place_result and bots[item.place_result] then
        Data(item):Flags():remove('goes-to-quickbar')
    end
end
