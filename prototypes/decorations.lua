-- "name": "disable-decorations",
--	"title": "Disable Decorations",
--	"author": "Pithlit",
--	"description":
-- "This mod prevents placement of decoration elements at terrain generation.
--   Removing decorations will reduce the size of save-games.
--   Other mods may place decoration elements manually. Decorations from existing games will not be removed

if settings.startup["picker-disable-decorations"].value then
    for _, deco in pairs(data.raw["optimized-decorative"]) do
        deco.autoplace = nil
    end
end
