------------------------------------------------------------------------------
--[[SMALL FIXES]]--
-------------------------------------------------------------------------------
local style = data.raw["gui-style"].default
local set = settings["startup"]
local player = data.raw["player"]["player"]

-------------------------------------------------------------------------------
--[[Fix Bots]]--
-------------------------------------------------------------------------------
--Make construction and logistic robots unminable (no plucking them from the air)
--Also removes them from going to the quickbar.
--Based on Small-Fixes
local types = {"construction-robot", "logistic-robot"}
local bots = {}

--Make them un-minable and fire proof
for _, bot in pairs(types) do
    for _, entity in pairs(data.raw[bot]) do
        bots[entity.name] = true
        if bot == "construction-robot" then
            if set["picker-unminable-construction-robots"].value then
                entity.minable = nil
            end
            if set["picker-fireproof-construction-robots"].value then
                entity.resistances = entity.resistances or {}
                table.insert(entity.resistances, {type = "fire", percent = 100})
            end
        end
        if bot == "logistic-robot" and set["picker-unminable-logistic-robots"].value then
            entity.minable = nil
        end
    end
end

--Remove goes-to-quickbar
for _, item in pairs(data.raw["item"]) do
    if item.place_result and bots[item.place_result] then
        local remove
        for idx, flag in pairs(item.flags) do
            if flag == "goes-to-quickbar" then
                remove = idx
                break
            end
        end
        if remove then table.remove(item.flags, remove) end
    end
end

-------------------------------------------------------------------------------
--[[Fireproof rail]]--
-------------------------------------------------------------------------------
-- "name": "Shinys-fireproof-signals",
-- "title": "Shinys fireproof signals",
-- "author": "ShinyAfro",
-- "description": "Makes train signals fire-proof",
if set["picker-fireproof-rail-signals"].value then
    for _, t_name in pairs({"rail-signal", "rail-chain-signal", "train-stop"}) do
        for _, t in pairs(data.raw[t_name]) do
            t.resistances = t.resistances or {}
            t.resistances[#t.resistances+1] = {type = "fire", percent = 100}
        end
    end
end

-------------------------------------------------------------------------------
--[[Corpse-be-gone]]--
-------------------------------------------------------------------------------
--Adjust coprse time to ris already at default.
--Based off the stumps-be-gone mod
local corpse_time = set["picker-corpse-time"].value
for _, corpse in pairs(data.raw["corpse"]) do
    if corpse.time_before_removed == 54000 then corpse.time_before_removed = corpse_time end
end
data.raw["character-corpse"]["character-corpse"].time_to_live = set["picker-player-corpse-time"].value

-------------------------------------------------------------------------------
--[[Starting inventory size]]--
-------------------------------------------------------------------------------
local inv_size = set["picker-inventory-size"].value
--Modify player inventory size
if player.inventory_size < inv_size then
    player.inventory_size = inv_size
end

-------------------------------------------------------------------------------
--[[Reacher]]--
-------------------------------------------------------------------------------
player.build_distance = set["picker-reacher-build-distance"].value
player.reach_distance = set["picker-reacher-reach-distance"].value
player.reach_resource_distance = set["picker-reacher-reach-resource-distance"].value
player.drop_item_distance = set["picker-reacher-drop-item-distance"].value
player.loot_pickup_distance = set["picker-reacher-loot-pickup-distance"].value
player.item_pickup_distance = set["picker-reacher-item-pickup-distance"].value

-------------------------------------------------------------------------------
--[[Roundup]]--
-------------------------------------------------------------------------------
if set["picker-roundup"].value then
    if data.raw["tile"]["concrete"] then
        data.raw["tile"]["concrete"].decorative_removal_probability = 1
    end
    if data.raw["tile"]["stone-path"] then
        data.raw["tile"]["stone-path"].decorative_removal_probability = 1
    end
end

-- -------------------------------------------------------------------------------
-- --[[Hide Planners]]--
-- -------------------------------------------------------------------------------
-- if set["picker-add-planners-library"] and set["picker-add-planners-library"].value then
--     for _, item in pairs(data.raw["selection-tool"]) do
--         if item.name ~= "dummy-selection-tool" then
--             item.show_in_library = true
--         end
--     end
--     -- local rm = data.raw["item"]["resource-monitor"]
--     -- if rm then
--     --     rm.flags = {"hidden"}
--     --     data.raw.recipe[rm.name].hidden = true
--     -- end
-- end

-------------------------------------------------------------------------------
--[[Tile stack sizes]]--
-------------------------------------------------------------------------------
local tile_size = set["picker-tile-stack"].value
if tile_size > 0 then
    for _, tile in pairs(data.raw.item) do
        local is_tile = tile.place_as_tile
        if is_tile and tile.stack_size < tile_size then
            tile.stack_size = tile_size
        end
    end
end

-------------------------------------------------------------------------------
--[[Brighten Cells]]--
-------------------------------------------------------------------------------
-- "name": "Brighten cells",
-- "title": "[Z] Brighten cells",
-- "author": "ZlovreD",
-- "homepage": "https://forums.factorio.com/viewtopic.php?f=144&t=45154",
-- "description": "Makes gui cells for inventory, technology, toolbars a little lighter (like as before)"
if set["picker-brighter-cell-background"].value then
    local function bluebuttongraphcialset(state)
        local offset
        if state == "default" then
            offset = { x = 0, y = 0 }
        elseif state == "hovered" then
            offset = { x = 0, y = 36 }
        elseif state == "clicked" then
            offset = { x = 0, y = 72 }
        end

        return
        {
            type = "monolith",
            top_monolith_border = 1,
            right_monolith_border = 1,
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image =
            {
                filename = "__PickerTweaks__/graphics/lighter_cell.png",
                priority = "extra-high-no-scale",
                width = 36,
                height = 36,
                x = offset.x,
                y = offset.y
            }
        }
    end

    local filter_bg = style["slot_with_filter_button"]
    filter_bg.default_graphical_set = bluebuttongraphcialset("default")
    filter_bg.hovered_graphical_set = bluebuttongraphcialset("hovered")
    filter_bg.clicked_graphical_set = bluebuttongraphcialset("clicked")
end
