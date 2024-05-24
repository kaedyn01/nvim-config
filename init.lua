-- Print greeting message
local current_hour = tonumber(os.date("%H"))

if current_hour >= 19 then
	print("Good eveneing")
elseif current_hour >= 12 then
	print("Good afternoon")
elseif current_hour >= 5 then
	print("Good morning")
else
	print("Good evening")
end

-- Load custom modules/settings
require("core.options")

-- Load package manager
require("lazy")
