#!env luajit

--[[ Prefuncs ]]

function endline()
	if debugMode == true then print("found a endliner") end
	allArgs = string.gsub(allArgs, [[\n]], "\n")
	if debugMode == true then print(allArgs) end
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

if debugMode == true then print(allArgs) end

if string.match(allArgs, [[\n]]) then
	endline()
end

