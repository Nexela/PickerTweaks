local style = data.raw['gui-style'].default

--(( Brighten Cells ))--
-- "name": "Brighten cells",
-- "title": "[Z] Brighten cells",
-- "author": "ZlovreD",
-- "homepage": "https://forums.factorio.com/viewtopic.php?f=144&t=45154",
-- "description": "Makes gui cells for inventory, technology, toolbars a little lighter (like as before)"
if settings.startup['picker-brighter-cell-background'].value then
    local function bluebuttongraphcialset(state)
        local offset = nil
        if state == 'default' then
            offset = {x = 0, y = 0}
        elseif state == 'hovered' then
            offset = {x = 0, y = 36}
        elseif state == 'clicked' then
            offset = {x = 0, y = 72}
        end

        return {
            border = 1,
                filename = '__PickerTweaks__/graphics/lighter_cell.png',
            position = {offset.x, offset.y},
            size = 36,
            scale = 1
        }
    end

    local filter_bg = style['slot_with_filter_button']
    filter_bg.default_graphical_set = bluebuttongraphcialset('default')
    filter_bg.hovered_graphical_set = bluebuttongraphcialset('hovered')
    filter_bg.clicked_graphical_set = bluebuttongraphcialset('clicked')
end scroll.vertical_scroll_bar_spacing = 3
end

--(( Brighten Cells ))--
-- "name": "Brighten cells",
-- "title": "[Z] Brighten cells",
-- "author": "ZlovreD",
-- "homepage": "https://forums.factorio.com/viewtopic.php?f=144&t=45154",
-- "description": "Makes gui cells for inventory, technology, toolbars a little lighter (like as before)"
if settings.startup['picker-brighter-cell-background'].value then
    local function bluebuttongraphcialset(state)
        local offset = nil
        if state == 'default' then
            offset = {x = 0, y = 0}
        elseif state == 'hovered' then
            offset = {x = 0, y = 36}
        elseif state == 'clicked' then
            offset = {x = 0, y = 72}
        end

        return {
            border = 1,
            filename = '__PickerTweaks__/graphics/lighter_cell.png',
            position = {offset.x, offset.y},
            size = 36,
            scale = 1
        }
    end

    local filter_bg = style['slot_with_filter_button']
    filter_bg.default_graphical_set = bluebuttongraphcialset('default')
    filter_bg.hovered_graphical_set = bluebuttongraphcialset('hovered')
    filter_bg.clicked_graphical_set = bluebuttongraphcialset('clicked')
end
