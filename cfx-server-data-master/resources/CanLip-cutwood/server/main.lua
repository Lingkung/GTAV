
ESX = nil
local playersProcessingStones = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('pkz_cutwood:pickedUpwoods')
AddEventHandler('pkz_cutwood:pickedUpwoods', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('wood')
	math.randomseed(GetGameTimer())

	if xItem.limit ~= -1 and (xItem.count + 1) > xItem.limit then
		TriggerClientEvent('esx:showNotification', _source, _U('stone_inventoryfull'))
	else

		xPlayer.addInventoryItem(xItem.name, 1)
	end
end)


RegisterServerEvent('pkz_cutwood:pack')
AddEventHandler('pkz_cutwood:pack', function()
	local xPlayer = ESX.GetPlayerFromId(source)


	xPlayer.removeInventoryItem('wood', 2)
	xPlayer.addInventoryItem('packaged_plank', 1)

end)

RegisterServerEvent('pkz_cutwood:Sellpack')

AddEventHandler('pkz_cutwood:Sellpack', function()
	--[[local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('packaged_plank', 1)
	xPlayer.addMoney(Config.Price)--]]

	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('packaged_plank')

	xPlayer.removeInventoryItem('packaged_plank', xItem.count)
	xPlayer.addMoney(Config.Price * xItem.count)

end)

RegisterServerEvent('pkz_cutwood:CheackingPack')
AddEventHandler('pkz_cutwood:CheackingPack', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('wood')

	if xItem.count > 1 then
	TriggerClientEvent('pkz_cutwood:CheackingOK', source)

	end




end)


RegisterServerEvent('pkz_cutwood:CheackingPack')
AddEventHandler('pkz_cutwood:CheackingPack', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('wood')

	if xItem.count > 1 then



	TriggerClientEvent('pkz_cutwood:CheackingOK', source)

	end




end)

RegisterServerEvent('pkz_cutwood:SellCheak')
AddEventHandler('pkz_cutwood:SellCheak', function()

	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('packaged_plank')

	if xItem.count > 0 then
	TriggerClientEvent('pkz_cutwood:CheackingSellOK', source)

	end


end)

ESX.RegisterServerCallback('pkz_cutwood:canPickUp', function(source, cb, item)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem(item)

	if xItem.limit ~= -1 and xItem.count >= xItem.limit then
		cb(false)
	else
		cb(true)
	end
end)



function CancelProcessing(playerID)
	if playersProcessingStones[playerID] then
		ESX.ClearTimeout(playersProcessingStones[playerID])
		playersProcessingStones[playerID] = nil
	end
end

RegisterServerEvent('pkz_cutwood:cancelProcessing')
AddEventHandler('pkz_cutwood:cancelProcessing', function()
	CancelProcessing(source)
end)

AddEventHandler('esx:playerDropped', function(playerID, reason)
	CancelProcessing(playerID)
end)

RegisterServerEvent('esx:onPlayerDeath')
AddEventHandler('esx:onPlayerDeath', function(data)
	CancelProcessing(source)
end)

