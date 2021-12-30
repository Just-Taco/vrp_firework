local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPclient = Tunnel.getInterface("vRP", "vrp_firework") 
vRP = Proxy.getInterface("vRP")

vRP.defInventoryItem({"trailburst","Trail Burst","Firework", function()
	local choices = {}
	choices["> Brug"] = {function(source,choice,mod)
		local source = source
		local user_id = vRP.getUserId({source})
        if user_id ~= nil then
			if vRP.tryGetInventoryItem({user_id,"trailburst",1}) then
				TriggerClientEvent("fireworks:box", source)
				vRP.closeMenu({source})
			end
        else
		end
	end}
	return choices
end, 1.0})

vRP.defInventoryItem({"fountain","Fountain","Firework", function()
	local choices = {}
	choices["> Brug"] = {function(source,choice,mod)
		local source = source
		local user_id = vRP.getUserId({source})
        if user_id ~= nil then
			if vRP.tryGetInventoryItem({user_id,"fountain",1}) then
				TriggerClientEvent("fireworks:cone", source)
				vRP.closeMenu({source})
			end
        else
		end
	end}
	return choices
end, 1.0})

vRP.defInventoryItem({"shotburst","Shot Burst","Firework", function()
	local choices = {}
	choices["> Brug"] = {function(source,choice,mod)
		local source = source
		local user_id = vRP.getUserId({source})
        if user_id ~= nil then
			if vRP.tryGetInventoryItem({user_id,"shotburst",1}) then
				TriggerClientEvent("fireworks:cylinder", source)
				vRP.closeMenu({source})
			end
        else
		end
	end}
	return choices
end, 1.0})

vRP.defInventoryItem({"starburst","Star Burst","Firework", function()
	local choices = {}
	choices["> Brug"] = {function(source,choice,mod)
		local source = source
		local user_id = vRP.getUserId({source})
        if user_id ~= nil then
			if vRP.tryGetInventoryItem({user_id,"starburst",1}) then
				TriggerClientEvent("fireworks:rocket", source)
				vRP.closeMenu({source})
			end
        else
		end
	end}
	return choices
end, 1.0})


RegisterServerEvent("syncbad1")
AddEventHandler("syncbad1", function(x, y, z)
    TriggerClientEvent("syncbad_cl1", -1, x, y, z)
end)
RegisterServerEvent("syncbad2")
AddEventHandler("syncbad2", function(x, y, z)
    TriggerClientEvent("syncbad_cl2", -1, x, y, z)
end)
RegisterServerEvent("syncbad3")
AddEventHandler("syncbad3", function(x, y, z)
    TriggerClientEvent("syncbad_cl3", -1, x, y, z)
end)
RegisterServerEvent("syncbad4")
AddEventHandler("syncbad4", function(x, y, z)
    TriggerClientEvent("syncbad_cl4", -1, x, y, z)
end)