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

    local quickbar = style.switch_quickbar_button_style
    quickbar.default_graphical_set.monolith_image.width = 20
    quickbar.default_graphical_set.monolith_image.height = 21
    quickbar.hovered_graphical_set.monolith_image.width = 20
    quickbar.hovered_graphical_set.monolith_image.height = 21
    quickbar.hovered_graphical_set.monolith_image.x = 25
    quickbar.clicked_graphical_set.monolith_image.width = 20
    quickbar.clicked_graphical_set.monolith_image.height = 21
    quickbar.clicked_graphical_set.monolith_image.x = 25

    local qbf = style.quick_bar_frame_style
    qbf.top_padding = 2

    local tbf = style.tool_bar_frame_style
    tbf.top_padding = 2

    local flow = style.flow_style
    flow.horizontal_spacing = 2
    flow.vertical_spacing = 4

    local frame = style.frame_style
    frame.top_padding = 2
    frame.right_padding = 3
    frame.bottom_padding = 3
    frame.left_padding = 2

    local scroll = style.scroll_pane_style
    scroll.horizontal_scroll_bar_spacing = 5
    scroll.vertical_scroll_bar_spacing = 3
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
