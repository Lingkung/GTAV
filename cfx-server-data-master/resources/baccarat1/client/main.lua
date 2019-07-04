local display = false

RegisterCommand("on", function()
    Citizen.CreateThread(function()
    SetNuiFocus(false,true)
      TriggerEvent('baccarat1:on', true)
      
    end)
end)
  


  RegisterCommand("off", function()
    Citizen.CreateThread(function()
        SetNuiFocus(false,false)
        TriggerEvent("baccarat1:off", true)
    end)
  end)


