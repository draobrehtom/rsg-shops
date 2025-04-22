local RSGCore = exports['rsg-core']:GetCoreObject()
lib.locale()
local spawnedPeds = {}

local function NearPed(npcmodel, npccoords, products, name, label)
    RequestModel(npcmodel)
    while not HasModelLoaded(npcmodel) do
        Wait(50)
    end
    spawnedPed = CreatePed(npcmodel, npccoords.x, npccoords.y, npccoords.z - 1.0, npccoords.w, false, false, 0, 0)
    SetEntityAlpha(spawnedPed, 0, false)
    SetRandomOutfitVariation(spawnedPed, true)
    SetEntityCanBeDamaged(spawnedPed, false)
    SetEntityInvincible(spawnedPed, true)
    FreezeEntityPosition(spawnedPed, true)
    SetBlockingOfNonTemporaryEvents(spawnedPed, true)
    SetPedCanBeTargetted(spawnedPed, false)
    if Config.FadeIn then
        for i = 0, 255, 51 do
            Wait(50)
            SetEntityAlpha(spawnedPed, i, false)
        end
    end

    if Config.EnableTarget then
        exports.ox_target:addLocalEntity(spawnedPed, {
            {
                name = 'npc_general_shop',
                icon = 'fa-solid fa-eye',
                targeticon = 'fa-solid fa-box',
                label = label,
                onSelect = function()
                    TriggerServerEvent('rsg-shops:server:openstore', products, name, label)
                end,
                distance = 3.0
            }
        })
    end
    return spawnedPed
end

CreateThread(function()
    while true do
        Wait(500)
        for k,v in pairs(Config.StoreLocations) do
            local playerCoords = GetEntityCoords(cache.ped)
            local distance = #(playerCoords - v.npccoords.xyz)

            if not Config.EnableTarget then
                exports['rsg-core']:createPrompt(v.name, v.shopcoords, RSGCore.Shared.Keybinds[Config.Keybind], locale('lang_1') .. v.label, {
                    type = 'server',
                    event = 'rsg-shops:server:openstore',
                    args = {v.products, v.name, v.label},
                })
            end

            if v.showblip == true then
                local StoreBlip = BlipAddForCoords(1664425300, v.shopcoords)
                SetBlipSprite(StoreBlip, joaat(v.blipsprite), true)
                SetBlipScale(StoreBlip, v.blipscale)
                SetBlipName(StoreBlip, v.label)
            end

            if distance < Config.DistanceSpawn and not spawnedPeds[k] then
                local spawnedPed = NearPed(v.npcmodel, v.npccoords, v.products, v.name, v.label)
                spawnedPeds[k] = { spawnedPed = spawnedPed }
            end

            if distance >= Config.DistanceSpawn and spawnedPeds[k] then
                if Config.FadeIn then
                    for i = 255, 0, -51 do
                        Wait(50)
                        SetEntityAlpha(spawnedPeds[k].spawnedPed, i, false)
                    end
                end
                DeletePed(spawnedPeds[k].spawnedPed)
                spawnedPeds[k] = nil
            end
        end
    end
end)

-- cleanup
AddEventHandler("onResourceStop", function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    for k,v in pairs(spawnedPeds) do
        DeletePed(spawnedPeds[k].spawnedPed)
        spawnedPeds[k] = nil
    end
end)
