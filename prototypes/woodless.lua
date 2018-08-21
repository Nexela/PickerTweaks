local Data = require('__stdlib__/data/data')
local Recipe = require('__stdlib__/data/recipe')

if settings.startup["picker-replace-wood"] then
    Data('small-electric-pole', 'item'):remove_fields('fuel_category', 'fuel_value')
    Recipe('small-electric-pole'):replace_ingredient('wood', 'iron-plate')
    Recipe('iron-axe'):replace_ingredient('wood', 'iron-plate')
    Recipe('wooden-chest'):replace_ingredient('wood', 'copper-plate')
    Recipe('shotgun'):replace_ingredient('wood', 'coal')
    Recipe('combat-shotgun'):replace_ingredient('wood', 'coal')
    Recipe('steel-axe'):replace_ingredient('wood', 'iron-plate')
end