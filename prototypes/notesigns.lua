--Notes and signs for stickynotes
local tech = {
    type = "technology",
    name = "sticky-notes",
    icon = "__PickerTweaks__/graphics/sticky-notes.png",
    icon_size = 128,
    effects = {
        {
            type = "unlock-recipe",
            recipe = "sticky-note"
        },
        {
            type = "unlock-recipe",
            recipe = "sticky-sign"
        }
    },
    unit = {
        count = 20,
        ingredients = {
            {"science-pack-1", 1}
        },
        time = 10
    },
    order = "k-c"
}

--[[Sticky Note]]
local sticky_note_recipe = {
    type = "recipe",
    name = "sticky-note",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {"wood", 3}
    },
    result = "sticky-note",
    result_count = 1
}

local sticky_note_item = {
    type = "item",
    name = "sticky-note",
    icon = "__PickerTweaks__/graphics/sticky-note.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "terrain",
    order = "y",
    place_result = "sticky-note",
    stack_size = 100
}

local sticky_note = Data.duplicate("container", "wooden-chest", "sticky-note", true)
sticky_note.icon = "__PickerTweaks__/graphics/sticky-note.png"
sticky_note.icon_size = 32
sticky_note.picture = {
    filename = "__PickerTweaks__/graphics/sticky-note.png",
    priority = "extra-high",
    width = 32,
    height = 32,
    shift = {0, 0}
}
--sticky_note.collision_mask = "floor-layer"
sticky_note.collision_box = {{-0.1, -0.1}, {0.1, 0.1}}
sticky_note.selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
sticky_note.inventory_size = 0

--[[Sticky Sign]]
local sticky_sign_recipe = {
    type = "recipe",
    name = "sticky-sign",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {"iron-plate", 3}
    },
    result = "sticky-sign",
    result_count = 1
}

local sticky_sign_item = {
    type = "item",
    name = "sticky-sign",
    icon = "__PickerTweaks__/graphics/sign-icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "terrain",
    order = "y",
    place_result = "sticky-sign",
    stack_size = 100
}

local sticky_sign = Data.duplicate("container", "wooden-chest", "sticky-sign", true)
sticky_sign.icon = "__PickerTweaks__/graphics/sign-icon.png"
sticky_sign.icon_size = 32
sticky_sign.picture = {
    filename = "__PickerTweaks__/graphics/sign.png",
    priority = "extra-high",
    width = 64,
    height = 64,
    shift = {0.5, -0.5}
}
sticky_sign.collision_box = {{-0.1, -0.1}, {0.1, 0.1}}
sticky_sign.selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
sticky_sign.inventory_size = 0

if settings.startup["picker-enable-sign-entities"].value then
    data:extend {sticky_sign_recipe, sticky_sign_item, sticky_sign, tech, sticky_note_recipe, sticky_note_item, sticky_note}
end
