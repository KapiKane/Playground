#!env luajit

--[[ Prefuncs ]]

function runCommand(command)
	local handle = io.popen(command)
	local output = handle:read("*a")
	handle:close()
	print(output)  
end

--[[ BORDER TO KEEP PROGRAM PREFUNCS FROM REUSED PREFUNCS ]]

function endline()
	if debugMode == true then print("found a endliner") end
	string = string.gsub(string, [[\n]], "\n")
	if debugMode == true then print("", string) end
end

function alertBEL()
	if debugMode == true then print("found an alert (BEL)") end
	string = string.gsub(string, [[\a]], " \b")
	os.execute("mpv ./pop.m4a > /dev/null 2>&1") --[[ yes ik jank & shet asf but also im too lazy to try & use a C API on lua if thats even doable fr ]]
	if debugMode == true then print(string) end
end


--[[ Prefuncs ]]

--[[ Variables ]]

 string = table.concat(arg, " ")
 debugMode = false

--[[ Variables ]]

if debugMode == true then print("the original string was: " .. string) end

if string.match(string, "-E") ~= false then
	string = string.gsub(string, "-e", " \b") 
	if string.match(string, [[\n]]) then
		endline()
	end

	if string.match(string, [[\a]]) then
		alertBEL()
	end

end
print(string)
