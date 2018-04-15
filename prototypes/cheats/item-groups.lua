local Data = require('stdlib/data/data')

Data('other', 'item-group'):copy('picker-cheats'):set_fields {
    icon = '__PickerTweaks__/graphics/cheats/creative-tools.png',
    icon_size = 64,
    order = 'zzzzzzzzz'
}
Data {
    type = 'item-subgroup',
    name = 'picker-cheats',
    group = 'picker-cheats',
    order = 'a'
}
Data {
    type = 'item-subgroup',
    name = 'picker-cheats-containers',
    group = 'picker-cheats',
    order = 'b'
}
Data {
    type = 'item-subgroup',
    name = 'picker-cheats-power',
    group = 'picker-cheats',
    order = 'c'
}
