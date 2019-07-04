ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('474a3cc1-4483-4bd0-b01c-93aff97ebce8')
AddEventHandler('474a3cc1-4483-4bd0-b01c-93aff97ebce8', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	amount = tonumber(amount)
	if amount == nil or amount <= 0 or amount > xPlayer.getMoney() then
		TriggerClientEvent('8e8af900-8d56-4116-af4d-851ff5c3f798', _source, _U('invalid_amount'))
	else
		xPlayer.removeMoney(amount)
		xPlayer.addAccountMoney('bank', amount)
		TriggerClientEvent('8e8af900-8d56-4116-af4d-851ff5c3f798', _source, _U('deposit_money') .. amount .. '~s~.')
		TriggerClientEvent('9ad3408d-4761-4573-a2bc-c8ec6ccbd4a1', _source)
	end
end)


RegisterServerEvent('b07bba1a-bff8-4eed-b92b-83d2a4f528c9')
AddEventHandler('b07bba1a-bff8-4eed-b92b-83d2a4f528c9', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	amount = tonumber(amount)
	local accountMoney = 0
	accountMoney = xPlayer.getAccount('bank').money
	if amount == nil or amount <= 0 or amount > accountMoney then
		TriggerClientEvent('8e8af900-8d56-4116-af4d-851ff5c3f798', _source, _U('invalid_amount'))
	else
		xPlayer.removeAccountMoney('bank', amount)
		xPlayer.addMoney(amount)
		TriggerClientEvent('8e8af900-8d56-4116-af4d-851ff5c3f798', _source, _U('withdraw_money') .. amount .. '~s~.')
		TriggerClientEvent('9ad3408d-4761-4573-a2bc-c8ec6ccbd4a1', _source)
	end
end)