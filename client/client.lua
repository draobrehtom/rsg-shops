local RSGCore = exports['rsg-core']:GetCoreObject()

Citizen.CreateThread(function()
    for stores, v in pairs(Config.StoreLocations) do
        exports['rsg-core']:createPrompt(v.location, v.shopcoords, RSGCore.Shared.Keybinds[Config.Keybind],  Lang:t('menu.open') .. v.name, {
            type = 'client',
            event = 'rsg-shops:client:openstore',
            args = {v.products, v.name},
        })
    end
end)

-- open store with opening hours
local OpenStore = function(products, name)
    local hour = GetClockHours()
    if (hour < Config.OpenTime) or (hour >= Config.CloseTime) then
        lib.notify({
            title = 'Store Closed',
            description = 'come back after '..Config.OpenTime..'am',
            type = 'error',
            icon = 'fa-solid fa-shop',
            iconAnimation = 'shake',
            duration = 7000
        })
        return
    end
    TriggerEvent('rsg-shops:openshop', products, name)
end

CreateThread(function()
    while true do
        local hour = GetClockHours()
        if (hour < Config.OpenTime) or (hour >= Config.CloseTime) then
            for _, v in pairs(Config.StoreLocations) do
                if v.showblip == true then
                    local StoreBlip = Citizen.InvokeNative(0x554D9D53F696D002, joaat('BLIP_STYLE_DEBUG_RED'), v.shopcoords)
                    SetBlipSprite(StoreBlip, joaat(v.blipsprite), true)
                    SetBlipScale(StoreBlip, v.blipscale)
                    Citizen.InvokeNative(0x9CB1A1623062F402, StoreBlip, v.name..' Closed')
                end
            end
        else
            for _, v in pairs(Config.StoreLocations) do
                if v.showblip == true then
                    local StoreBlip = Citizen.InvokeNative(0x554D9D53F696D002, joaat('BLIP_STYLE_DEBUG_GREEN'), v.shopcoords)
                    SetBlipSprite(StoreBlip,  joaat(v.blipsprite), true)
                    SetBlipScale(StoreBlip, v.blipscale)
                    Citizen.InvokeNative(0x9CB1A1623062F402, StoreBlip, v.name..' Open')
                end
            end
        end
        Wait(60000) -- every min
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
