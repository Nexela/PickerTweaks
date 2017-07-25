-------------------------------------------------------------------------------
--[[Direction]]--
-------------------------------------------------------------------------------
local colors = require("prototypes.signals.colors")
local names = {"left", "right", "up", "down", "left-right", "up-down"}

for _, color in pairs(colors) do
    if settings.startup["VirtualSignals-"..color].value then
        local subgroup = "more-signals-"..color
        local signals = {}
        for _, name in pairs(names) do
            signals[#signals+1] = {
                type = "virtual-signal",
                name = name.."-"..color,
                localised_name = {"virtual-signal-name.more-signals", {"signals-color."..color}, {"signals-direction."..name}},
                icons =
                {
                    {
                        icon = "__base__/graphics/icons/signal/signal_"..color..".png",
                    },
                    {
                        icon = "__PickerTweaks__/graphics/icons/signal/directions/"..name..".png",
                    }
                },
                subgroup = subgroup,
                order = "more-signals-d-directions["..color.."]-["..name.."]",
            }
        end
        data:extend(signals)
    end
end
