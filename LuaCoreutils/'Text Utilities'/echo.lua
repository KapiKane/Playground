#!env luajit

--[[ Prefuncs ]]

function runCommand(command)
	local handle = io.popen(command)
	local output = handle:read("*a")
	handle:close()
	print(output)  
end

-- Sepration

function version()
	print([[  ___ ]])
	print([[ /   \    		Echo v1.0 ]])
	print([[|     | 		Originally written by Brian Fox and Chet Ramey]])
	print([[|     < <(ECHO!) 	Rewritten by KapiKaine ]])
	print([[|     |]])
	print([[ ¯¯¯¯¯   		This program may be freely redistributed under the]])
	print([[	   				the terms of the GNU General Public License.]])
	os.exit()
end

function backslash()
	if debugMode == true then print("found a blackslash") end

	string = string.gsub(string, [[\\]], "\\")
	if debugMode == true then print("backslash produced: " .. string) end
end

function alertBEL()
	if debugMode == true then print("found an alert (BEL)") end
	
	string = string.gsub(string, [[\a]], " \b")
	os.execute("mpv ./BEEP.m4a > /dev/null 2>&1") --[[ yes ik jank & shet asf but also im too lazy to try & use a C API on lua if thats even doable fr ]]
	if debugMode == true then print("alert profuced: " .. string) end
end

function backspace()
	if debugMode == true then print("found a backspace") end

	string = string.gsub(string, [[\b]], "\b")
	if debugMode == true then print("backspace produced: " .. string) end
end

function cancel()
	if debugMode == true then print("found a cancel; produce no further output") end

	local startIndex, endIndex = string.find(string, "\\c", 1, true)
	if debugMode == true then print("\\c is at: " .. endIndex) end
	
	string = string.sub(string, 0, endIndex)
	if debugMode ==true then print("string after string.sub() is: " .. string) end
		
	string = string.gsub(string, "\\c", "%%")
	if debugMode ==true then print("string after string.gsub() is: " .. string) end
end

function escape()
	if debug == true then print("found an escapeline") end
end

function endline()
	if debugMode == true then print("found a endliner") end

	if string.match(string, "-n") then
		string = string.gsub(string, [[\n]], "%")	
	else
		string = string.gsub(string, [[\n]], "\n")
	end
	
	if debugMode == true then print("Endliner produced: " .. string) end
end

--[[ Prefuncs ]]

--[[ Variables ]]

 string = table.concat(arg, " ")
 debugMode = true

--[[ Variables ]]

if arg[1] == "--help" then
	runCommand("man echo")
	os.exit()
elseif arg[1] == "--version" then
	version()
end

if debugMode == true then print("the original string was: " .. string) end

if string.match(string, "-E") ~= true then
	string = string.gsub(string, "-e", " \b") 
	if debugMode == true then print("string is now: ", string) end

	if string.match(string, [[\\]]) then
		backslash()
	end

	if string.match(string, [[\a]]) then
		alertBEL()
	end

	if string.match(string, [[\b]]) then
		backspace()
	end

	if string.match(string, [[\c]]) then
		cancel()
	end

	if string.match(string, [[\e]]) then
		escape() --[[ ESCAPEEEEE, LEAVE WHILE YOU STILL CAN BROTHER. XD  ]]
	end

	if string.match(string, [[\n]]) then
		endline()
	end

end
print(string)
