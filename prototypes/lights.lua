local Data = require('__stdlib__/data/data')

--(( ENHANCED LIGHTS ))--
--[[
    "name": "EnhancedFlashlight",
    "title": "Enhanced Flashlight",
    "author": "grfwoot",
    "description": "Replaces the default flashlight with a better, more realistic version",
--]]
if settings.startup['picker-enhanced-lights'].value then
    Data('player', 'player').light = {
        {
            minimum_darkness = 0.1,
            intensity = 0.3,
            size = 40,
            color = {r = 1.0, g = 1.0, b = 1.0}
        },
        {
            type = 'oriented',
            minimum_darkness = 0.1,
            picture = {
                filename = '__PickerTweaks__/graphics/lightcone-enhanced.png',
                priority = 'extra-high',
                flags = {'light'},
                scale = 2,
                width = 350,
                height = 370
            },
            shift = {0, -24},
            size = 2,
            intensity = 0.9,
            color = {r = 1.0, g = 1.0, b = 1.0}
        }
    }

    for _, vehicle in pairs(data.raw['car']) do
        vehicle.light = {
            {
                minimum_darkness = 0.1,
                intensity = 0.2,
                size = 30
            },
            {
                type = 'oriented',
                minimum_darkness = 0.1,
                picture = {
                    filename = '__PickerTweaks__/graphics/lightcone-enhanced-vehicle.png',
                    priority = 'extra-high',
                    flags = {'light'},
                    scale = 2,
                    width = 350,
                    height = 370
                },
                shift = {0, -25},
                size = 2,
                intensity = 1.0,
                color = {r = 1.0, g = 1.0, b = 1.0}
            }
        }
    end

    for _, loco in pairs(data.raw['locomotive']) do
        loco.front_light = {
            {
                shift = {0, -3.5},
                intensity = 0.2,
                minimum_darkness = 0.1,
                size = 30
            },
            {
                type = 'oriented',
                minimum_darkness = 0.3,
                picture = {
                    filename = '__PickerTweaks__/graphics/lightcone-enhanced-vehicle.png',
                    priority = 'extra-high',
                    flags = {'light'},
                    scale = 2,
                    width = 350,
                    height = 370
                },
                shift = {0, -27},
                size = 2,
                intensity = 1.0,
                color = {r = 1.0, g = 1.0, b = 1.0}
            }
        }
        loco.stand_by_light = {
            {
                add_perspective = true,
                color = {b = 1},
                shift = {-0.6, -3.5},
                size = 2,
                intensity = 0.3,
                minimum_darkness = 0.3
            },
            {
                add_perspective = true,
                color = {b = 1},
                shift = {0.6, -3.5},
                size = 2,
                intensity = 0.3,
                minimum_darkness = 0.3
            },
            {
                shift = {0, -3.5},
                intensity = 0.2,
                minimum_darkness = 0.1,
                size = 30
            }
        }
    end
end --))

--((Brighter Lights toggle)) --
if settings.startup['picker-brighter-lights-player'].value then
    for _, player in pairs(data.raw['player']) do
        player.light = {
            {
                intensity = 0.9,
                size = 150
            }
        }
    end
end

if settings.startup['picker-brighter-lights-vehicles'].value then
    for _, vehicle in pairs(data.raw['car']) do
        vehicle.light[#vehicle.light + 1] = {
            intensity = 0.9,
            size = 150,
            minimum_darkness = 0.1
        }
    end

    for _, loco in pairs(data.raw['locomotive']) do
        --front_light is the headlight going forward
        --back_light is the red light at the back
        --stand_by_light is the blue light at the front when parked.
        loco.front_light[#loco.front_light + 1] = {
            intensity = 0.9,
            size = 150,
            minimum_darkness = 0.1
        }
        loco.stand_by_light[#loco.stand_by_light + 1] = {
            intensity = 0.9,
            size = 150,
            minimum_darkness = 0.1
        }
        loco.back_light[#loco.back_light + 1] = {
            intensity = 0.9,
            size = 150,
            minimum_darkness = 0.1
        }
    end
end --))
