-------------------------------------------------------------------------------
--[[Extra Settings Info]] --
-------------------------------------------------------------------------------
--[[
    "name": "Noxys_Extra_Settings_Info",
    "version": "0.0.3",
    "title": "Noxys Extra Settings Info",
    "author": "Noxy",
--]]

-- Setting prefixs to check for and then ignore
local mod_settings_blacklist = {
    "arachnophobia",
    "vanillaLoaders",
    "reskins-angels",
    "reskins-bobs",
    "reskins-compatibility",
    "reskins-library",
}

-- Append defaults to bool settings
if data.raw['bool-setting'] then
    -- For every setting in 'bool-setting'
    for _, v in pairs(data.raw['bool-setting']) do
        -- Check if the setting is blacklisted
        for _, setting in pairs(mod_settings_blacklist) do
            if string.find(v.name, setting, 1, true) then goto continue end -- If true, setting is blacklisted, do nothing
        end

        -- Append default to setting description, checking if localised_description was set already
        if v.default_value ~= nil then
            if v.localised_description then
                v.localised_description = {'picker-extra-settings-info.merge', v.localised_description, '\n\n' .. 'Default: ' .. tostring(v.default_value)}
            else
                v.localised_description = {'picker-extra-settings-info.merge', {'mod-setting-description.' .. v.name}, '\n\n' .. 'Default: ' .. tostring(v.default_value)}
            end
        end

        ::continue::
    end
end

-- Append defaults to int/double settings
for _, s in pairs {'int-setting', 'double-setting'} do
    if data.raw[s] then
        for _, v in pairs(data.raw[s]) do
            -- Check if the setting is blacklisted
            for _, setting in pairs(mod_settings_blacklist) do
                if string.find(v.name, setting, 1, true) then goto continue end -- If true, setting is blacklisted, do nothing
            end

            -- Construct table of min/max/default values
            local t = {}
            if v.minimum_value ~= nil then
                table.insert(t, 'Minimum: ' .. v.minimum_value)
            end
            if v.default_value ~= nil then
                table.insert(t, 'Default: ' .. v.default_value)
            end
            if v.maximum_value ~= nil then
                table.insert(t, 'Maximum: ' .. v.maximum_value)
            end

            -- Append default to setting description, checking if localised_description was set already
            if #t then
                if v.localised_description then
                    v.localised_description = {'picker-extra-settings-info.merge', v.localised_description, '\n\n' .. table.concat(t, ', ')}
                else
                    v.localised_description = {'picker-extra-settings-info.merge', {'mod-setting-description.' .. v.name}, '\n\n' .. table.concat(t, ', ')}
                end
            end

            ::continue::
        end
    end
end

-- Append defaults to string settings
if data.raw['string-setting'] then
    for _, v in pairs(data.raw['string-setting']) do
        -- Check if the setting is blacklisted
        for _, setting in pairs(mod_settings_blacklist) do
            if string.find(v.name, setting, 1, true) then goto continue end -- If true, setting is blacklisted, do nothing
        end

        -- Construct table of defaults/permissions
        local t = {}
        if v.default_value ~= nil then
            table.insert(t, 'Default: "' .. v.default_value .. '"')
        end
        if v.allow_blank == true then
            table.insert(t, 'Allows blank')
        elseif v.allow_blank == false then
            table.insert(t, 'Disallows blank')
        end

        -- Append default to setting description, checking if localised_description was set already
        if #t then
            if v.localised_description then
                v.localised_description = {'picker-extra-settings-info.merge', v.localised_description, '\n\n' .. table.concat(t, ', ')}
            else
                v.localised_description = {'picker-extra-settings-info.merge', {'mod-setting-description.' .. v.name}, '\n\n' .. table.concat(t, ', ')}
            end
        end

        ::continue::
    end
end
