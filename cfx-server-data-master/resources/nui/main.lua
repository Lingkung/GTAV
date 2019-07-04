local display = false
local input = {["E"] = 38,["DOWN"] = 173,["TOP"] = 27,["ESC"] =  200}

  RegisterNetEvent('nui:on')
  AddEventHandler('nui:on', function()
    SendNUIMessage({
      type = "ui",
      display = true,
      money = 1000
    })
    
  end)

  RegisterNetEvent('nui:off')
  AddEventHandler('nui:off', function()
    SendNUIMessage({
      type = "ui",
      display = false
    })
  end)
  


RegisterNetEvent('nui:errormessage')
	AddEventHandler('nui:errormessage', function()
        
end)


RegisterNetEvent('nui:spinit')
AddEventHandler('nui:spinit', function(bet)
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(_source)

	if xPlayer.get('money') >= bet.betsize then
		xPlayer.removeMoney(bet.betsize)
        SendNUIMessage({
                    type = "ui",
                    canspin = true,
                    choose = bet.choose
                })
	else
		        SendNUIMessage({
                    type = "ui",
                    display = false
                })
	end

end)
 --[[ ////////////////////////////////////////// ]]

RegisterCommand("on", function()
    Citizen.CreateThread(function()
    SetNuiFocus(true,true)
    
      TriggerEvent('nui:on', true)
    end)
end)
  


  RegisterCommand("off", function()
    Citizen.CreateThread(function()
        TriggerEvent("nui:off", true)
    end)
  end)

  --[[ ////////////////////////////////////////// ]]
RegisterNUICallback('playerpays', function(bet, cb)
    local _source = source
	TriggerEvent('nui:spinit',bet)
end) 


  
  

