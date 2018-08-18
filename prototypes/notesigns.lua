local Data = require("__stdlib__/data/data")

if not settings.startup["picker-enable-sign-entities"].value then
    return
end

Data {
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

Data {
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

Data {
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

Data("wooden-chest", "container"):copy("sticky-note"):set_fields {
    icon = "__PickerTweaks__/graphics/sticky-note.png",
    icon_size = 32,
    picture = {
        filename = "__PickerTweaks__/graphics/sticky-note.png",
        priority = "extra-high",
        width = 32,
        height = 32,
        shift = {0, 0}
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    inventory_size = 0
}

Data {
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

Data {
    type = "item",
    name = "sticky-sign",
    icon = "__PickerTweaks__/graphics/sign-icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "terrain",
    order = "y",
    place_result = "sticky-sign",
    stack_size = 100
}

Data("wooden-chest", "container"):copy("sticky-sign"):set_fields {
    icon = "__PickerTweaks__/graphics/sign-icon.png",
    icon_size = 32,
    picture = {
        filename = "__PickerTweaks__/graphics/sign.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        shift = {0.5, -0.5}
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    inventory_size = 0
}
