--[[
	Author: Klarasprudel (Schmetterlingsbrigade) TurtleWOW
	License: MIT License
]]
local _G = _G or getfenv(0)
local Roids = _G.Roids or {}
-- CHecks if item with given name is in inventory and returns the count number
function Roids.countItemByName(itemName) 
	local count = pfUI.api.GetItemCount(itemName);
	return count;
end;


function sunders_needed() 
--	
-- Expose Armor

	local b,c,i;
	for i = 1, 16 do b = UnitDebuff("target", i);
		if b and strfind(b, "Ability_Warrior_Riposte") then 
			DEFAULT_CHAT_FRAME:AddMessage("sunders not needed, expose is up!");		
			return false;
		end;
		if b and strfind(b, "Ability_Warrior_Sunder") then 
			b, c = UnitDebuff("target", i); 
			break; 
		end; 
	end; 
	if not c or c < 5 then 
--		DEFAULT_CHAT_FRAME:AddMessage("sunders not up");
		return true 
	else 		
--	DEFAULT_CHAT_FRAME:AddMessage("Sunders up");
	return false 
	end;
end;


function randomString(...)
    -- Alle Argumente in einer Tabelle speichern
    local args = {...}
    -- Anzahl der Argumente ermitteln
    local count = #args
    -- Wenn keine Argumente übergeben wurden, gib nil zurück
    if count == 0 then
        return nil
    end
    -- Zufälligen Index auswählen
    local index = math.random(1, count)
    -- String mit dem zufälligen Index zurückgeben
    return args[index]
end;

function selectmnt() 
	local mounts = {"Frostsaber", "Riding Turtle", "Frostsaber"}
	DEFAULT_CHAT_FRAME:AddMessage(randomString(mounts));	
end;	

