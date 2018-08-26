local style = data.raw['gui-style'].default

--(( Brighten Cells ))--
-- "name": "Brighten cells",
-- "title": "[Z] Brighten cells",
-- "author": "ZlovreD",
-- "homepage": "https://forums.factorio.com/viewtopic.php?f=144&t=45154",
-- "description": "Makes gui cells for inventory, technology, toolbars a little lighter (like as before)"
if settings.startup['picker-brighter-cell-background'].value then
    local function bluebuttongraphcialset(state)
        local offset
        if state == 'default' then
            offset = {x = 0, y = 0}
        elseif state == 'hovered' then
            offset = {x = 0, y = 36}
        elseif state == 'clicked' then
            offset = {x = 0, y = 72}
        end

        return {
            type = 'monolith',
            top_monolith_border = 1,
            right_monolith_border = 1,
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
                filename = '__PickerTweaks__/graphics/lighter_cell.png',
                priority = 'extra-high-no-scale',
                width = 36,
                height = 36,
                x = offset.x,
                y = offset.y
            }
        }
    end

    local filter_bg = style['slot_with_filter_button']
    filter_bg.default_graphical_set = bluebuttongraphcialset('default')
    filter_bg.hovered_graphical_set = bluebuttongraphcialset('hovered')
    filter_bg.clicked_graphical_set = bluebuttongraphcialset('clicked')
end