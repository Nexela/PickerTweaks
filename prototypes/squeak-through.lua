--------------------------------------------------------------------------------
--[[Squeak-Through]]--
--------------------------------------------------------------------------------
local Area = require("stdlib/area/area")

local gap_requirements =
{
	["solar-panel"]             = 0.25,
	["accumulator"]             = 0.25,
	["generator"]               = 0.25,
	["pipe"]                    = 0.42,
	["pipe-to-ground"]          = 0.42,
	["heat-pipe"]		        = 0.25,
	["reactor"]			        = 0.48,
	["programmable-speaker"]    = 0.25,
	["container"]               = 0.25,
	["logistic-container"]      = 0.25,
	["assembling-machine"]      = 0.25,
	["arithmetic-combinator"]   = 0.25,
	["decider-combinator"]      = 0.25,
	["constant-combinator"]     = 0.25,
	["boiler"]                  = 0.42,
	["electric-pole"]           = 0.25,
	["mining-drill"]            = 0.25,
	["pump"]                    = 0.42,
	["radar"]                   = 0.25,
	["storage-tank"]            = 0.25,
	["turret"]                  = 0.25,
	["beacon"]                  = 0.25,
	["furnace"]                 = 0.25,
	["lab"]                     = 0.25
	--["tree"]                    = 0.42,
}



-- Returns a coordinate reduced where required to form the specified gap between it and the tile boundary.
local function adjust_coordinate_to_form_gap(coordinate, required_gap)

	-- Treat all coordinates as positive to simplify calculations.
	local is_negative_coordinate = (coordinate < 0)
	if is_negative_coordinate then
		coordinate = coordinate * -1
	end

	local tile_width = 0.5

	-- Calculate the existing gap (how much space there is to the next tile edge or 0 when the coordinate lies on a tile edge).
	local distance_past_last_tile_edge = coordinate % tile_width -- This is how far the collision box extends over any tile edge, and should be 0 for a perfect fit.
	local existing_gap = 0
	if distance_past_last_tile_edge > 0 then
		existing_gap = (tile_width - distance_past_last_tile_edge)
	end

	-- Reduce the coordinate to make the gap large enough if it is not already.
	if existing_gap < required_gap then
		coordinate = coordinate + existing_gap - required_gap
		if coordinate < 0 then
			coordinate = 0
		end
	end

	-- Make the coordinate negative again if it was originally negative.
	if is_negative_coordinate then
		coordinate = coordinate * -1
	end

	return coordinate
end

-- Checks all existing prototypes listed in gap_requirements and
-- reduces their collision box to make a gap large enough to walk though if it is not already.
local function adjust_collision_boxes()
	for prototype_type, required_gap in pairs(gap_requirements) do
		for _, prototype in pairs(data.raw[prototype_type]) do
			-- If the prototype is not excluded and has a collision box then resize it.
			if  prototype.collision_box and Area(prototype.collision_box):size() > 0 then
				for y=1,2 do
					for x=1,2 do
						prototype.collision_box[x][y] = adjust_coordinate_to_form_gap(prototype.collision_box[x][y], required_gap)
					end
				end
			end
		end
	end
end

if settings.startup["picker-squeak-through"].value then
    adjust_collision_boxes()
end
