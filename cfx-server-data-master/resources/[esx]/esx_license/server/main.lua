ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function AddLicense(target, type, cb)

	local xPlayer = ESX.GetPlayerFromId(target)

	MySQL.Async.execute(
		'INSERT INTO user_licenses (type, owner) VALUES (@type, @owner)',
		{
			['@type']  = type,
			['@owner'] = xPlayer.identifier
		},
		function(rowsChanged)
			if cb ~= nil then
				cb()
			end
		end
	)

end

function RemoveLicense(target, type, cb)
	
	local xPlayer = ESX.GetPlayerFromId(target)

	MySQL.Async.execute(
		'DELETE FROM user_licenses WHERE type = @type AND owner = @owner',
		{
			['@type']  = type,
			['@owner'] = xPlayer.identifier
		},
		function(rowsChanged)
			if cb ~= nil then
				cb()
			end
		end
	)

end

function GetLicense(type, cb)
	
	MySQL.Async.fetchAll(
		'SELECT * FROM licenses WHERE type = @type',
		{
			['@type'] = type
		},
		function(result)

			local data = {
				type  = type,
				label = result[1].label
			}

			cb(data)

		end
	)

end

function GetLicenses(target, cb)
	
	local xPlayer = ESX.GetPlayerFromId(target)
		
	MySQL.Async.fetchAll(
		'SELECT * FROM user_licenses WHERE owner = @owner',
		{
			['@owner'] = xPlayer.identifier
		},
		function(result)

			local licenses   = {}
			local asyncTasks = {}

			for i=1, #result, 1 do

				local scope = function(type)

					table.insert(asyncTasks, function(cb)

						MySQL.Async.fetchAll(
							'SELECT * FROM licenses WHERE type = @type',
							{
								['@type'] = type
							},
							function(result2)

								table.insert(licenses, {
									type  = type,
									label = result2[1].label
								})

								cb()

							end
						)

					end)

				end

				scope(result[i].type)

			end

			Async.parallel(asyncTasks, function(results)
				cb(licenses)
			end)

		end
	)

end

function CheckLicense(target, type, cb)
	
	local xPlayer = ESX.GetPlayerFromId(target)
		
	MySQL.Async.fetchAll(
		'SELECT COUNT(*) as count FROM user_licenses WHERE type = @type AND owner = @owner',
		{
			['@type']  = type,
			['@owner'] = xPlayer.identifier
		},
		function(result)

			if tonumber(result[1].count) > 0 then
				cb(true)
			else
				cb(false)
			end

		end
	)

end

function GetLicensesList(cb)
	
	MySQL.Async.fetchAll(
		'SELECT * FROM licenses',
		{
			['@type'] = type
		},
		function(result)
			
			local licenses = {}

			for i=1, #result, 1 do
				table.insert(licenses, {
					type  = result[i].type,
					label = result[i].label
				})
			end

			cb(licenses)

		end
	)

end

RegisterNetEvent('esx_license:addLicense')
AddEventHandler('eb72e79c-95e9-4abc-9ac1-5777aef3c725', function(target, type, cb)
	AddLicense(target, type, cb)
end)

RegisterNetEvent('esx_license:removeLicense')
AddEventHandler('d62fd2e2-88ca-4872-a576-56d0ac02726b', function(target, type, cb)
	RemoveLicense(target, type, cb)
end)

AddEventHandler('7be7331b-b30d-4f99-b8a2-d799f954801e', function(type, cb)
	GetLicense(type, cb)
end)

AddEventHandler('883f85c5-ca29-4b2c-ab7b-d4d74f3c5f27', function(target, cb)
	GetLicenses(target, cb)
end)

AddEventHandler('ebf47cbf-4661-4b2b-a2ba-3cf892e76e28', function(target, type, cb)
	CheckLicense(target, type, cb)
end)

AddEventHandler('5c6c77a7-d2f7-4b44-9f5c-3f4fd6639973', function(cb)
	GetLicensesList(cb)
end)

ESX.RegisterServerCallback('cd2a6222-023b-4801-8c49-6488227f5cb3', function(source, cb, type)
	GetLicense(type, cb)
end)

ESX.RegisterServerCallback('519781cb-d66d-4ed6-b7a2-50c53d9e262f', function(source, cb, target)
	GetLicenses(target, cb)
end)

ESX.RegisterServerCallback('710d4275-1aeb-4a90-8a8e-cd3c22d17fde', function(source, cb, target, type)
	CheckLicense(target, type, cb)
end)

ESX.RegisterServerCallback('b603bfea-ebeb-4d6c-b455-6cda1988d175', function(source, cb)
	GetLicensesList(cb)
end)