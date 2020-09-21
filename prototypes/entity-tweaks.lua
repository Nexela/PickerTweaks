-- TODO Fixme nuclearReactorReactor.working_light_picture.filename nil
local Data = require('__stdlib__/stdlib/data/data')

-- local function get_new_path(oldTexturePath)
--     return (string.gsub(oldTexturePath, '^%_%_base%_%_', '__PickerTweaks__'))
-- end

if not mods['RealisticReactorGlow'] and settings.startup['picker-realistic-reactor-glow'].value then
    --[[
        "name": "RealisticReactorGlow",
        "title": "Realistic Reactor Glow",
        "author": "<NO_NAME>",
        "description": "The glow of working nuclear reactor has the proper color now!"
    --]]
    local nuclearReactorItem = Data("nuclear-reactor", "item")
    nuclearReactorItem.icon = "__PickerTweaks__/graphics/icons/nuclear-reactor.png"
    nuclearReactorItem.icon_size = 32
    nuclearReactorItem.icon_mipmaps = 1

    local nuclearReactorReactor = Data('nuclear-reactor', 'reactor')
    nuclearReactorReactor.light.color = {b = 0.94, g = 1, r = 0}
    nuclearReactorReactor.working_light_picture.filename = "__PickerTweaks__/graphics/entity/nuclear-reactor/reactor-lights-color.png"
    nuclearReactorReactor.working_light_picture.hr_version.filename = "__PickerTweaks__/graphics/entity/nuclear-reactor/hr-reactor-lights-color.png"

    local nuclearReactorTechnology = Data('nuclear-power', 'technology')
    nuclearReactorTechnology.icon = "__PickerTweaks__/graphics/technology/nuclear-power.png"
    nuclearReactorTechnology.icon_size = 128
    nuclearReactorTechnology.icon_mipmaps = 1
end
