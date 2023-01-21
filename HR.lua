if game.placeid == 8750997647 then
local HRLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Mlgharvard/WolfGangHR67/main/HRLib.lua')))()
local Window = HRLib:MakeWindow({Name = "WolfGangHR67 Tapping Legends X", HidePremium = false, IntroText= "WolfGangHR67 Tapping Legends X", SaveConfig = true, ConfigFolder = "WolfGangHR67 Tapping Legends X ConfigFolder"})

--Valuses
_G.autoTab = true
_G.autoRebirth = true
_G.AutoHatch = true
_G.selectEgg = "Basic Egg"


--Functions

function autoTab()
	while _G.autoTab == true do
		game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
		wait (.000000000001)
	 end
	end

	function autoRebirth()
		while _G.autoRebirth == true do
			game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(1)
			wait (.000000000001)
		 end
		end

		function AutoHatch()
			while _G.autoHatch == true do
                game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(_G.selectEgg,1)
				wait (.000000000001)
        end
	    end

		function equipedbest()
game:GetService("ReplicatedStorage").Remotes.UnequipAll:InvokeServer()
game:GetService("ReplicatedStorage").Remotes.EquipBest:InvokeServer()
		end
		end

-- Tabs
local FarmTab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local EggsTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MistTab = Window:MakeTab({
	Name = "Mist",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Toggles
FarmTab:AddToggle({
	Name = "AutoTab",
	Default = false,
	Callback = function(Value)
		print(Value)
		_G.autoTab = Value
		autoTab()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		print(Value)
		_G.autoRebirth = Value
		autoRebirth()
	end    
})

EggsTab:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(Value)
		_G.AutoHatch = Value
	    autoHatch()
	end    
})

MiscTab:AddButton({
	Name = "Equiped Best Pets",
	Callback = function()
      		equipedbest()
  	end    
})

-- DropDowns

EggsTab:AddDropdown({
	Name = "Select Egg",
	Default = "Basic Egg",
	Options = {"Basic Egg", "Rare Egg"},
	Callback = function(Value)
		selectEgg = Value
		print(_g.selectEgg)
	end    
})


end
HRLib:Init()