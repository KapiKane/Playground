#!env luajit

--[[ Prefuncs ]]

function endline()
		if debugMode == true then print("found a endliner") end
end

--[[
function DebugMode(func)
	if debugMode == true then
		func
	end
end
]]

--[[ Prefuncs ]]

--[[ Variables ]]

 allArgs = table.concat(arg, " ")
 debugMode = true

--[[ Variables ]]

if string.match(allArgs, [[\n]]) then
	endline()
else
print(allArgs)
end
