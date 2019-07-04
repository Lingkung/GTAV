  --[[ ////////////////////////////////////////// ]]

  RegisterServerEvent('baccarat1:on')
  AddEventHandler('baccarat1:on', function()
    SendNUIMessage({
      type = "ui",
      display = true,
      money = 10000
    })
    
  end)

  RegisterServerEvent('baccarat1:off')
  AddEventHandler('baccarat1:off', function()
    SendNUIMessage({
      type = "ui",
      display = false,
      money=0
    })
    
  end)
  
