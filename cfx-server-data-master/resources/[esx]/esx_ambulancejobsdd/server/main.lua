ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_ambulancejob:revive')
AddEventHandler('esx_ambulancejob:revive', function(target)
  TriggerClientEvent('esx_ambulancejob:revive', target)
end)

TriggerEvent('esx_phone:registerNumber', 'ambulance', _U('alert_ambulance'), true, true)
TriggerEvent('esx_society:registerSociety', 'ambulance', 'Ambulance', 'society_ambulance', 'society_ambulance', 'society_ambulance', {type = 'public'})

ESX.RegisterServerCallback('esx_ambulancejob:removeItemsAfterRPDeath', function(source, cb)

  local xPlayer = ESX.GetPlayerFromId(source)

 if Config.RemoveCashAfterRPDeath then

    if xPlayer.getMoney() > 0 then
      xPlayer.removeMoney(xPlayer.getMoney())
   end

    if xPlayer.getAccount('black_money').money > 0 then
      xPlayer.setAccountMoney('black_money', 0)
    end

 end

  if Config.RemoveItemsAfterRPDeath then
  for i=1, #xPlayer.inventory, 1 do
      if xPlayer.inventory[i].count > 0 then
       xPlayer.setInventoryItem(xPlayer.inventory[i].name, 0)
     end
   end
 end

  if Config.RemoveWeaponsAfterRPDeath then
for i=1, #xPlayer.loadout, 1 do
     xPlayer.removeWeapon(xPlayer.loadout[i].name)
    end
 end

  cb()

end)

ESX.RegisterServerCallback('esx_ambulancejob:removeItemsAfterRPDeathRemoveMoney', function(source, cb)

  local xPlayer = ESX.GetPlayerFromId(source)

 if Config.RemoveCashAfterRPDeath then

   if xPlayer.getMoney() > 0 then
      xPlayer.removeMoney(xPlayer.getMoney())
    end
	
   if xPlayer.getAccount('black_money').money > 0 then
     xPlayer.setAccountMoney('black_money', 0)
    end

  end

  if Config.EarlyRespawn and Config.EarlyRespawnFine then
    xPlayer.removeAccountMoney('bank', Config.EarlyRespawnFineAmount)
  end

  if Config.RemoveItemsAfterRPDeath then
    for i=1, #xPlayer.inventory, 1 do
      if xPlayer.inventory[i].count > 0 and not xPlayer.inventory[i].rare then
       xPlayer.setInventoryItem(xPlayer.inventory[i].name, 0)
      end
    end
  end

  if Config.RemoveWeaponsAfterRPDeath then
    for i=1, #xPlayer.loadout, 1 do
      xPlayer.removeWeapon(xPlayer.loadout[i].name)
    end
  end

  cb()

end)

ESX.RegisterServerCallback('esx_ambulancejob:getBankMoney', function(source, cb)

    local xPlayer = ESX.GetPlayerFromId(source)
    local money = xPlayer.getAccount('bank').money

    cb(money)
end)

ESX.RegisterServerCallback('esx_ambulancejob:getFineList', function(source, cb, category)

  MySQL.Async.fetchAll(
    'SELECT * FROM fine_types WHERE category = @category',
    {
      ['@category'] = category
    },
    function(fines)
      cb(fines)
    end
  )

end)

ESX.RegisterServerCallback('esx_ambulance:ambulancecount', function(source, cb)

	local xPlayers = ESX.GetPlayers()

	EMSConnected = 0

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'ambulance' then
			EMSConnected = EMSConnected + 1
		end		
	end
	
	cb(EMSConnected)

end)

RegisterServerEvent('removemoneyautorevive')
AddEventHandler('removemoneyautorevive', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeMoney(Config.ReviveFine)
end)

TriggerEvent('es:addGroupCommand', 'revive', 'admin', function(source, args, user)

  if args[1] ~= nil then
    TriggerClientEvent('esx_ambulancejob:revive', tonumber(args[1]))
  else
    TriggerClientEvent('esx_ambulancejob:revive', source)
  end

end, function(source, args, user)
  TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficient Permissions.")
end, {help = _U('revive_help'), params = {{name = 'id'}}})


ESX.RegisterServerCallback('esx_ambulancejob:getDeathTime', function(source, cb)
	local identifier = GetPlayerIdentifiers(source)[1]

	MySQL.Async.fetchScalar('SELECT dead_time FROM users WHERE identifier = @identifier', {
		['@identifier'] = identifier
	}, function(dead_time)
		if dead_time > 0 then
			print(('esx_ambulancejob: %s attempted combat logging!'):format(identifier))
		end

		cb(dead_time)
	end)
end)

RegisterServerEvent('esx_ambulancejob:setDeathTime')
AddEventHandler('esx_ambulancejob:setDeathTime', function(dead_time)
	local identifier = GetPlayerIdentifiers(source)[1]

	MySQL.Sync.execute('UPDATE users SET dead_time = @dead_time WHERE identifier = @identifier', {
		['@identifier'] = identifier,
		['@dead_time'] = dead_time
	})
end)

ESX.RegisterServerCallback('esx_ambulancejob:getBleedoutTime', function(source, cb)
	local identifier = GetPlayerIdentifiers(source)[1]

	MySQL.Async.fetchScalar('SELECT BleedoutTime FROM users WHERE identifier = @identifier', {
		['@identifier'] = identifier
	}, function(BleedoutTime)
		if BleedoutTime > 0 then
			print(('esx_ambulancejob: %s attempted combat logging!'):format(identifier))
		end

		cb(BleedoutTime)
	end)
end)

RegisterServerEvent('esx_ambulancejob:setBleedoutTime')
AddEventHandler('esx_ambulancejob:setBleedoutTime', function(BleedoutTime)
	local identifier = GetPlayerIdentifiers(source)[1]

	MySQL.Sync.execute('UPDATE users SET BleedoutTime = @BleedoutTime WHERE identifier = @identifier', {
		['@identifier'] = identifier,
		['@BleedoutTime'] = BleedoutTime
	})
end)

ESX.RegisterServerCallback('esx_ambulancejob:getDeathStatus', function(source, cb)
	local identifier = GetPlayerIdentifiers(source)[1]

	MySQL.Async.fetchScalar('SELECT is_dead FROM users WHERE identifier = @identifier', {
		['@identifier'] = identifier
	}, function(isDead)
		if isDead then
			print(('esx_ambulancejob: %s attempted combat logging!'):format(identifier))
		end

		cb(isDead)
	end)
end)

RegisterServerEvent('esx_ambulancejob:setDeathStatus')
AddEventHandler('esx_ambulancejob:setDeathStatus', function(isDead)
	local identifier = GetPlayerIdentifiers(source)[1]

	if type(isDead) ~= 'boolean' then
		print(('esx_ambulancejob: %s attempted to parse something else than a boolean to setDeathStatus!'):format(identifier))
		return
	end

	MySQL.Sync.execute('UPDATE users SET is_dead = @isDead WHERE identifier = @identifier', {
		['@identifier'] = identifier,
		['@isDead'] = isDead
	})
end)
