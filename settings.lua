data:extend {
    {
        type = "bool-setting",
        name = "picker-unminable-construction-robots",
        setting_type = "startup",
        default_value = true,
        order = "[bots]-a"
        --default factorio false
    },
    {
        type = "bool-setting",
        name = "picker-unminable-logistic-robots",
        setting_type = "startup",
        default_value = true,
        order = "[bots]-b"
        --default factorio false
    },
    {
        type = "bool-setting",
        name = "picker-fireproof-construction-robots",
        setting_type = "startup",
        default_value = true,
        order = "[bots]-c"
        --default factorio false
    },
    {
        type = "int-setting",
        name = "picker-corpse-time",
        setting_type = "startup",
        default_value = 60 * 60,
        minimum_value = 1,
        maximum_value = 60 * 60 * 60 * 60,
        order = "[corpse-time]-a"
        --default factorio 54000, 15 minutes
    },
    {
        type = "int-setting",
        name = "picker-player-corpse-time",
        setting_type = "startup",
        default_value = 60 * 60 * 15,
        minimum_value = 1,
        maximum_value = 60 * 60 * 60 * 60,
        order = "[corpse-time]-b"
        --default factorio 54000, 15 minutes
    },
    {
        type = "int-setting",
        name = "picker-inventory-size",
        setting_type = "startup",
        default_value = 60,
        minimum_value = 1,
        maxium_value = 600,
        order = "[inventory]-a"
        --default factorio 60
    },
    {
        type = "double-setting",
        name = "picker-reacher-reach-distance",
        setting_type = "startup",
        default_value = 6,
        maximum_value = 10000,
        minimum_value = 1,
        order = "[reacher]-a"
        --default factorio 6
    },
    {
        type = "double-setting",
        name = "picker-reacher-build-distance",
        setting_type = "startup",
        default_value = 6,
        maximum_value = 10000,
        minimum_value = 1,
        order = "[reacher]-b"
        --default factorio 6
    },
    {
        type = "double-setting",
        name = "picker-reacher-reach-resource-distance",
        setting_type = "startup",
        default_value = 2.7,
        maximum_value = 10000,
        minimum_value = 1,
        order = "[reacher]-c"
        --default factorio 2.7
    },
    {
        type = "double-setting",
        name = "picker-reacher-drop-item-distance",
        setting_type = "startup",
        default_value = 6,
        maximum_value = 10000,
        minimum_value = 1,
        order = "[reacher]-d"
        --default factorio 6
    },
    {
        type = "double-setting",
        name = "picker-reacher-item-pickup-distance",
        setting_type = "startup",
        default_value = 1,
        maximum_value = 100,
        minimum_value = 1,
        order = "[reacher]-e"
        --default factorio 1
    },
    {
        type = "double-setting",
        name = "picker-reacher-loot-pickup-distance",
        setting_type = "startup",
        default_value = 2,
        maximum_value = 100,
        minimum_value = 1,
        order = "[reacher]-f"
        --default factorio 2
    },
    {
        type = "bool-setting",
        name = "picker-add-planners-library",
        setting_type = "startup",
        default_value = true,
        order = "[hide-planners]-a"
    },
    {
        type = "bool-setting",
        name = "picker-brighter-lights-player",
        setting_type = "startup",
        default_value = false,
        order = "[brighter-lights]-a"
    },
    {
        type = "bool-setting",
        name = "picker-brighter-lights-vehicles",
        setting_type = "startup",
        default_value = false,
        order = "[brighter-lights]-b"
    },
    {
        type = "bool-setting",
        name = "picker-smaller-tree-box",
        setting_type = "startup",
        default_value = true,
        order = "[squeak-through]-a"
    },
    {
        type = "bool-setting",
        name = "picker-squeak-through",
        setting_type = "startup",
        default_value = false,
        order = "[squeak-through]-b"
    },
    {
        type = "bool-setting",
        name = "picker-disable-smoke",
        setting_type = "startup",
        default_value = false,
        order = "[disable]-a"
    },
    {
        type = "bool-setting",
        name = "picker-disable-decorations",
        setting_type = "startup",
        default_value = false,
        order = "[disable]-b"
    },
    {
        type = "bool-setting",
        name = "picker-roundup",
        setting_type = "startup",
        default_value = true,
        order = "[roundup]-a"
    },
    {
        type = "bool-setting",
        name = "picker-smaller-gui-borders",
        setting_type = "startup",
        default_value = false,
        order = "[gui]-a"
    },
    {
        type = "bool-setting",
        name = "picker-small-unplugged-icon",
        setting_type = "startup",
        default_value = true,
        order = "[smaller]-b"
    },
    {
        type = "string-setting",
        name = "picker-iondicators-line",
        setting_type = "startup",
        default_value = "vanilla",
        allowed_values = {"vanilla", "green", "yellow", "purple", "blue"},
        order = "[iondicators]-a"
    },
    {
        type = "string-setting",
        name = "picker-iondicators-arrow",
        setting_type = "startup",
        default_value = "vanilla",
        allowed_values = {"vanilla", "green", "yellow", "purple", "blue"},
        order = "[iondicators]-b"
    },
    {
        type = "int-setting",
        name = "picker-tile-stack",
        setting_type = "startup",
        default_value = 0,
        minimum_value = 0,
        maximum_value = 100000,
        order = "[stack]-a"
    },
    {
        type = "bool-setting",
        name = "VirtualSignals-extra-numbers",
        setting_type = "startup",
        default_value = true,
        order = "[VirtualSignals]-a-extras-0"
    },
    {
        type = "bool-setting",
        name = "VirtualSignals-extra-letters",
        setting_type = "startup",
        default_value = true,
        order = "[VirtualSignals]-a-extras-a"
    },
    {
        type = "bool-setting",
        name = "VirtualSignals-power",
        setting_type = "startup",
        default_value = true,
        order = "[VirtualSignals]-b-power"
    },
    {
        type = "bool-setting",
        name = "picker-brighter-cell-background",
        setting_type = "startup",
        default_value = false,
        order = "[gui]-b"
    },
    {
        type = "bool-setting",
        name = "picker-fireproof-rail-signals",
        setting_type = "startup",
        default_value = true,
        order = "[rails]-a"
    },
    {
        type = "bool-setting",
        name = "picker-generic-vehicle-grids",
        setting_type = "startup",
        default_value = false,
        order = "[vehicles]-a"
    },
    {
        type = "bool-setting",
        name = "picker-enable-sign-entities",
        setting_type = "startup",
        default_value = false,
        order = "[sticky-notes]-a"
    }
}

--Color Settings
local colors = require("prototypes.signals.colors")
for _, name in pairs(colors) do
    data:extend {
        {
            type = "bool-setting",
            name = "VirtualSignals-" .. name,
            setting_type = "startup",
            default_value = (name ~= "blue" and true) or false,
            order = "VirtualSignals-colors-" .. name
        }
    }
end
