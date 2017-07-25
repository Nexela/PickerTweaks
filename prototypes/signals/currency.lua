-------------------------------------------------------------------------------
--[[Currency]]--
-------------------------------------------------------------------------------
local colors = require("prototypes.signals.colors")
local names = {
    "cent", "currency", "dollar", "euro", "franc", "peso", "pound", "yen",
}

for _, color in pairs(colors) do
    if settings.startup["VirtualSignals-"..color].value then
        local subgroup = "more-signals-"..color
        local signals = {}
        for _, name in pairs(names) do
            signals[#signals+1] = {
                type = "virtual-signal",
                name = name.."-"..color,
                localised_name = {"virtual-signal-name.more-signals", {"signals-color."..color}, {"signals-currency."..name}},
                icons =
                {
                    {
                        icon = "__base__/graphics/icons/signal/signal_"..color..".png",
                    },
                    {
                        icon = "__PickerTweaks__/graphics/icons/signal/currency/"..name..".png",
                    }
                },
                subgroup = subgroup,
                order = "more-signals-f-currency["..color.."]-["..name.."]",
            }
        end
        data:extend(signals)
    end
end
