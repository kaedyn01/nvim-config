--[[
This file displays a greeting message based on the time 
of day.
--]]
local current_hour = tonumber(os.date("%H"))

if current_hour >= 19 then
	print("Good evening")
elseif current_hour >= 12 then
	print("Good afternoon")
elseif current_hour >= 5 then
	print("Good morning")
else
	print("Good evening")
end
