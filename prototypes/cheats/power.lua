local Entity = require('stdlib/data/entity')
local Item = require('stdlib/data/item')
local Recipe = require('stdlib/data/recipe')

local recipes = settings.startup['picker-cheat-recipes'].value

local icon_path = '__PickerTweaks__/graphics/cheats/icons/'
local entity_path = '__PickerTweaks__/graphics/cheats/entities/'

local function create_pole(from, name, gfx, order, distance, supply)
    local pole =
        Entity(from, 'electric-pole'):copy(name):set_fields {
        maximum_wire_distance = distance,
        supply_area_distance = supply,
        icon = icon_path .. gfx
    }
    pole.pictures.filename = entity_path .. gfx

    local item = Item(from, 'item'):copy(name)
    item:set_field('icon', icon_path .. gfx):subgroup_order('picker-cheats-power', order)
    if recipes then
        item:Flags():remove('hidden')
        Recipe(from):copy(name):set_fields{
            enabled = true,
            hidden = false,
        }
    else
        item:Flags():add('hidden')
    end
end
create_pole('big-electric-pole', 'picker-cheats-electric-pole', 'super-electric-pole.png', 'a', 64, 2)
create_pole('substation', 'picker-cheats-substation', 'super-substation.png', 'b', 64, 64)
