local Recipe = require('__stdlib__/stdlib/data/recipe')

--(( Free Wires ))--
-- "name": "freenetworkwiring",
-- "title": "Free Network Wiring",
-- "author": "Vas",
-- "homepage": "https://mods.factorio.com/mod/freenetworkwiring",
-- "description":
--[[
    -- With the circuit network already being annoying as is,
    -- no one wants to have to pay for thousands of wires! Not to mention,
    -- blueprints give you the wires for free, so this mod makes the red and green wires free,
    -- and is compatible with nearly any mod that alters those wires.
    -- I'll add compatibility to other modded wires too if someone ever makes any other color wires.
--]]
if settings.startup['picker-free-circuit-wires'].value then
    Recipe('red-wire').clear_ingredients()
    Recipe('green-wire').clear_ingredients()
end
