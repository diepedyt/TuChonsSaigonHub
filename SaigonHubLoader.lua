_G.Vers = "yekemozewa"
_G.Games = {
	[10449761463] = "https://raw.githubusercontent.com/diepedyt/TuChonsSaigonHub/main/strongestbattleground.lua"
}

_G.Scripts = {o = _G.Vers,d = "bstlar.com/1r/Fia"}

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

local n = nil;local v0=bit32 or bit ;local v1=v0.bxor;local v2=v0.bor;local v3=v0.band;local v4=string.char;local v5=string.byte;local v6=string.sub;local v0=bit32 or bit ;local v1=v0.bxor;local v7=table.concat;local v8=table.insert;local function v9(v13,v14)local v15={};for v16=2 -1 , #v13 do v8(v15,v4(v1(v5(v6(v13,v16,v3(v16,1) + v2(v16,2 -1 ) )),v5(v6(v14,v3(1 -0 ,(v16-(2 -1))% #v14 ) + v2(1,(v16-(620 -(555 + 64)))% #v14 ) ,v3(1 + ((v16-(932 -(857 + 74)))% #v14) ,1) + v2((569 -(367 + 201)) + ((v16-1)% #v14) ,928 -(214 + 713) ) )))%(65 + 191) ));end return v7(v15);end local v10={};v10[v9("\8\129\134\139","\126\177\163\187\69\134\219\167")]={};v10[v9("\234\115\136\122","\156\67\173\74\165")][v9("\80\100\242\25","\38\84\215\41\118\220\70")]={};n=(_G.Scripts.o:reverse()):lower();_G.KeyInserted = ui.CreateKeySystem(n, "discord.gg/".._G.Scripts.d, theme, "Saigon Hub 👑")

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
