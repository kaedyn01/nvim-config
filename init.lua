-- Print greeting message
local current_hour = tonumber(os.date("%H"))

if 5 <= current_hour and current_hour <= 10 then
	print("Good morning")
elseif 11 <= current_hour and current_hour <= 18 then
	print("Good afternoon")
else
	print("Good evening")
end

-- Load custom modules/settings
require("options")
