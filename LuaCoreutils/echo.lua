#!env luajit

--[[ Prefuncs ]]

function runCommand(command)
	local handle = io.popen(command)
	local output = handle:read("*a")
	handle:close()
	print(output)  
end

function sleep(sec)
   local t0 = os.clock()
   while os.clock() - t0 <= sec do
   end
end

function pause()
   io.stdin:read'*l'
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


if arg[1] == "--help" then
	runCommand("man echo")
end

if string.match(allArgs, [[\n]]) then
		if debugMode == true then print("found a endliner") end

else
	 if debugMode == true then print("wala") end
end

if debugMode == true then print(allArgs) end
