--[[
  "name": "MultiConcrete",
  "title": "MultiConcrete",
  "description": "Concrete and Hazard Concrete is the same thing, just rotate it before placement",
  "author": "darkfrei",
  "license": "MIT",
--]] --
local Data = require('__stdlib__/stdlib/data/data')

if settings.startup['picker-multi-concrete'].value then
    -- Regular Concrete
    Data('concrete', 'tile').next_direction = 'hazard-concrete-left'
    local hzl = Data('hazard-concrete-left', 'tile')
    hzl.next_direction = 'hazard-concrete-right'
    hzl.minable.result = 'concrete'
    local hzr = Data('hazard-concrete-right', 'tile')
    hzr.next_direction = 'concrete'
    hzr.minable.result = 'concrete'
    Data('hazard-concrete', 'recipe').hidden = true
    Data('hazard-concrete', 'item'):add_flag('hidden')

    -- Refined Concrete
    Data('refined-concrete', 'tile').next_direction = 'refined-hazard-concrete-left'
    local rh_cl = Data('refined-hazard-concrete-left', 'tile')
    rh_cl.next_direction = 'refined-hazard-concrete-right'
    rh_cl.minable.result = 'refined-concrete'
    local rh_cr = Data('refined-hazard-concrete-right', 'tile')
    rh_cr.next_direction = 'refined-concrete'
    rh_cr.minable.result = 'refined-concrete'
    Data('refined-hazard-concrete', 'recipe').hidden = true
    Data('refined-hazard-concrete', 'item'):add_flag('hidden')
end
