local settings = settings["startup"]
local utility_sprites = data.raw["utility-sprites"].default

-------------------------------------------------------------------------------
--[[Smaller no power]]--
-------------------------------------------------------------------------------
--Code and Gfx from "Ion's Tweaks: Less Unplugged", by "author": "KingIonTrueLove"
if settings["picker-small-unplugged-icon"].value then
    utility_sprites.electricity_icon_unplugged.filename = "__PickerTweaks__/graphics/electricity-icon-unplugged.png"
    utility_sprites.too_far_from_roboport_icon.filename = "__PickerTweaks__/graphics/too-far-from-roboport-icon.png"
end

-------------------------------------------------------------------------------
--[[Smaller gui borders]]--
-------------------------------------------------------------------------------
--Tweak by "Ion's UI Tweaks: Smaller Borders", by "KingIonTrueLove"
if settings["picker-smaller-gui-borders"].value then
    local style = data.raw["gui-style"].default
    style.switch_quickbar_button_style.default_graphical_set.monolith_image.width = 20
    style.switch_quickbar_button_style.default_graphical_set.monolith_image.height = 21
    style.switch_quickbar_button_style.hovered_graphical_set.monolith_image.width = 20
    style.switch_quickbar_button_style.hovered_graphical_set.monolith_image.height = 21
    style.switch_quickbar_button_style.hovered_graphical_set.monolith_image.x = 25
    style.switch_quickbar_button_style.clicked_graphical_set.monolith_image.width = 20
    style.switch_quickbar_button_style.clicked_graphical_set.monolith_image.height = 21
    style.switch_quickbar_button_style.clicked_graphical_set.monolith_image.x = 25

    style.flow_style.horizontal_spacing = 2
    style.flow_style.vertical_spacing = 4

    style.frame_style.top_padding = 2
    style.frame_style.right_padding = 3
    style.frame_style.bottom_padding = 3
    style.frame_style.left_padding = 2

    style.quick_bar_frame_style.top_padding = 2
    style.tool_bar_frame_style.top_padding = 2

    style.scroll_pane_style.horizontal_scroll_bar_spacing = 5
    style.scroll_pane_style.vertical_scroll_bar_spacing = 3
end

-------------------------------------------------------------------------------
--[[Iondicators]]--
-------------------------------------------------------------------------------
--GFX From "Iondicators" by "KingIonTrueLove" https://mods.factorio.com/mods/ion_cannon_1
local ion_line = settings["picker-iondicators-line"].value
local ion_arrow = settings["picker-iondicators-arrow"].value
if ion_line == "green" or ion_line == "yellow" or ion_line == "blue" or ion_line == "purple" then
    utility_sprites.indication_line.filename = "__PickerTweaks__/graphics/iondicators/"..ion_line.."-indication-line.png"
end
if ion_arrow == "green" or ion_arrow == "yellow" or ion_arrow == "blue" or ion_arrow == "purple" then
    utility_sprites.indication_arrow.filename = "__PickerTweaks__/graphics/iondicators/"..ion_arrow.."-indication-arrow.png"
end
