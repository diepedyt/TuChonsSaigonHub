_G.Vers = "yekemozewa"
_G.Games = {
	[10449761463] = "https://raw.githubusercontent.com/diepedyt/TuChonsSaigonHub/main/strongestbattleground.lua"
}

_G.Scripts = {o = _G.Vers,d = "bstlar.com/1r/Fia"}
if _G.Games then
	for i,v in pairs(_G.Games) do
	_G.Scripts[i] = v
	end
end

repeat task.wait() until game:IsLoaded()

local ui = loadstring(game:HttpGet('https://raw.githubusercontent.com/diepedyt/customLua/main/SimpleUiLib.lua'))()

local theme = {
	["MainColor"] = Color3.fromRGB(255, 0, 4),
	["KeyUIColor"] = Color3.fromRGB(58, 13, 13),
	["KeyUIBorderColor"] = Color3.fromRGB(255, 255, 255),
	["KeyLoginTextBoxColor"] = Color3.fromRGB(255, 51, 95),
	["KeyLoginTextColor"] = Color3.fromRGB(255, 255, 255),
	["TextButtonColor"] = Color3.fromRGB(255, 99, 102),
	["TextButtonTextColor"] = Color3.fromRGB(107, 0, 2)
}

local n = nil
n=(_G.Scripts.o:reverse()):lower();_G.KeyInserted = ui.CreateKeySystem(n, _G.Scripts.d, theme, "Saigon Hub 👑")

if _G.KeyInserted then
	loadstring(game:HttpGet(_G.Scripts[game.PlaceId]))()
	if false then
	    local main = ui.CreateMain()
	    for i,v in pairs(_G.Scripts) do
		if type(v) == "table" then
		    local gameName = tostring(i)
		    pcall(function()
			gameName = game:GetService("MarketplaceService"):GetProductInfo(i).Name
		    end)
		    ui.CreateSection(main, gameName)
		    for i,v in pairs(v) do
			ui.CreateButton(main, i ,function()
			    task.spawn(function()
				loadstring(game:HttpGet(v))()
			    end)
			    main:Destroy()
			end)
		    end
		end
	    end
	end
end
