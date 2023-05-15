local display = false
local reteval = s_m_m_doctor_01
local npc = CreatePed(4, 0xD47303AC, 295.58, -590.65, 42.24, 65.19, 0, false, true)

RequestModel( GetHashKey( "s_m_m_doctor_01" ) )
while ( not HasModelLoaded( GetHashKey( "s_m_m_doctor_01" ) ) ) do
    Citizen.Wait( 1 )
end

Citizen.CreateThread(function() 
    SetPedDropsWeaponsWhenDead(npc, false)
    FreezeEntityPosition(npc, true)
    SetEntityInvincible(npc, true)
    ClearPedTasks(npc)
    SetPedCanRagdollFromPlayerImpact(npc, false)
    SetPedCanRagdoll(npc, false)

end)

  RegisterNetEvent('medmenu:on')
  AddEventHandler('medmenu:on', function()
    ClearPedTasks(PlayerPedId())
    SendNUIMessage({
      type = "ui",
      display = true
    })
  end)

  RegisterNetEvent('medmenu2:off')
  AddEventHandler('medmenu2:off', function()
    SendNUIMessage({
      type = "ui",
      display = false
    })
  end)


  exports.ox_target:addBoxZone({
    coords = vec3(295.27, -590.86, 43.0),
    size = vec3(2, 1, 2),
    rotation = 340.0,
    debug = drawZones,
    options = {
        {
            name = 'box',
            event = 'medmenu:on',
            icon = 'fa-solid fa-heart',
            label = 'Infromációk',
        }
    }
})

RegisterCommand("iboff", function()
  Citizen.CreateThread(function()
      TriggerEvent("medmenu2:off", true)
  end)
end)


Citizen.CreateThread(function() 
  EnableAllControlActions(0)
  IsControlJustReleased(0, 38) 
  SendNUIMessage({
    type = "ui",
    display = false
  })
end)