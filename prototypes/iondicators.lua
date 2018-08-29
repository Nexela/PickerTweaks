local utility_sprites = data.raw['utility-sprites'].default

-------------------------------------------------------------------------------
--[Smaller no power]--
-------------------------------------------------------------------------------
-- Code and Gfx from "Ion's Tweaks: Less Unplugged", by "author": "KingIonTrueLove"
-- "name": "SmallerLogisticDeliveryIcon",
-- "title": "Smaller Logistic Delivery Icon",
-- "author": "Mungu",
-- "description": "Smaller icon for Logistic Delivery (Robots)",
if settings.startup['picker-small-unplugged-icon'].value then
    --utility-constants.default.default_alert_icon_scale = 0.5,
    --utility-constants.default.default_alert_icon_scale_by_type = {}
    data.raw['item-request-proxy']['item-request-proxy'].picture.filename = '__PickerTweaks__/graphics/material-construction.png'
    utility_sprites.electricity_icon_unplugged.filename = '__PickerTweaks__/graphics/electricity-icon-unplugged.png'
    utility_sprites.too_far_from_roboport_icon.filename = '__PickerTweaks__/graphics/too-far-from-roboport-icon.png'
end

-------------------------------------------------------------------------------
--[Iondicators]--
-------------------------------------------------------------------------------
--GFX From "Iondicators" by "KingIonTrueLove" https://mods.factorio.com/mods/ion_cannon_1
local ion_line = settings.startup['picker-iondicators-line'].value
local ion_arrow = settings.startup['picker-iondicators-arrow'].value
if ion_line == 'green' or ion_line == 'yellow' or ion_line == 'blue' or ion_line == 'purple' then
    utility_sprites.indication_line.filename = '__PickerTweaks__/graphics/iondicators/' .. ion_line .. '-indication-line.png'
end
if ion_arrow == 'green' or ion_arrow == 'yellow' or ion_arrow == 'blue' or ion_arrow == 'purple' then
    utility_sprites.indication_arrow.filename = '__PickerTweaks__/graphics/iondicators/' .. ion_arrow .. '-indication-arrow.png'
end
