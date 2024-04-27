local RSGCore = exports['rsg-core']:GetCoreObject()
local SpawnedStoreBilps = {}

CreateThread(function()
    for _,v in pairs(Config.StoreLocations) do
        exports['rsg-core']:createPrompt(v.location, v.shopcoords, RSGCore.Shared.Keybinds[Config.Keybind],  Lang:t('client.lang_1') .. v.name, {
            type = 'client',
            event = 'rsg-shops:client:openstore',
            args = {v.products, v.name},
        })
        if v.showblip == true then    
            local StoreBlip = BlipAddForCoords(1664425300, v.shopcoords)
            SetBlipSprite(StoreBlip, joaat(v.blipsprite), true)
            SetBlipScale(StoreBlip, v.blipscale)
            SetBlipName(StoreBlip, v.name)
            table.insert(SpawnedStoreBilps, StoreBlip)
        end
    end
end)

-- open store with opening hours
local OpenStore = function(products, name)
    if Config.StoreAlwaysOpen then
        TriggerEvent('rsg-shops:openshop', products, name)
    else
        local hour = GetClockHours()
        if (hour < Config.OpenTime) or (hour >= Config.CloseTime) then
            lib.notify({
                title = Lang:t('client.lang_2'),
                description = Lang:t('client.lang_3')..Config.OpenTime..Lang:t('client.lang_4'),
                type = 'error',
                icon = 'fa-solid fa-shop',
                iconAnimation = 'shake',
                duration = 7000
            })
            return
        end
        TriggerEvent('rsg-shops:openshop', products, name)
    end
end

-- get store hours function
local GetStoreHours = function()
    local hour = GetClockHours()
    if Config.StoreAlwaysOpen then
        for k, v in pairs(SpawnedStoreBilps) do
            BlipAddModifier(v, joaat('BLIP_MODIFIER_MP_COLOR_8'))
        end
    else
        if (hour < Config.OpenTime) or (hour >= Config.CloseTime) then
            for k, v in pairs(SpawnedStoreBilps) do
                BlipAddModifier(v, joaat('BLIP_MODIFIER_MP_COLOR_2'))
            end
        else
            for k, v in pairs(SpawnedStoreBilps) do
                BlipAddModifier(v, joaat('BLIP_MODIFIER_MP_COLOR_8'))
            end
        end
    end
end

-- get shop hours on player loading
RegisterNetEvent('RSGCore:Client:OnPlayerLoaded', function()
    GetStoreHours()
end)

-- update shop hourse every min
CreateThread(function()
    while true do
        if Config.StoreAlwaysOpen then
            GetStoreHours()
            Wait(60000) -- every min
        end
        Wait(1000)
    end       
end)

AddEventHandler('rsg-shops:client:openstore', function(products, name)
    OpenStore(products, name)
end)

RegisterNetEvent('rsg-shops:openshop')
AddEventHandler('rsg-shops:openshop', function(shopType, shopName)
    local type = shopType
    local shop = shopName
    local ShopItems = {}
    ShopItems.items = {}
    ShopItems.label = shop
    ShopItems.items = Config.Products[type]
    ShopItems.slots = 30
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "Itemshop_"..type, ShopItems)
end)

RegisterNetEvent('rsg-shops:client:UpdateShop')
AddEventHandler('rsg-shops:client:UpdateShop', function(shopType, itemData, amount)
    TriggerServerEvent('rsg-shops:server:UpdateShopItems', shopType, itemData, amount)
end)

RegisterNetEvent('rsg-shops:client:SetShopItems')
AddEventHandler('rsg-shops:client:SetShopItems', function(shopType, shopProducts)
    Config.Products[shopType] = shopProducts
end)

RegisterNetEvent('rsg-shops:client:RestockShopItems')
AddEventHandler('rsg-shops:client:RestockShopItems', function(shopType, amount)
    print('RESTOCK FUNCTION')
    print(shopType)
    print(amount)
    if Config.Products[shopType] ~= nil then
        for k, v in pairs(Config.Products[shopType]) do
            Config.Products[shopType][k].amount = Config.Products[shopType][k].amount + amount
        end
    end
end)
