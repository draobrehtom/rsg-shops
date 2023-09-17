local RSGCore = exports['rsg-core']:GetCoreObject()

Citizen.CreateThread(function()
    for stores, v in pairs(Config.Locations) do
        exports['rsg-core']:createPrompt(v.location, v.shopcoords, RSGCore.Shared.Keybinds[Config.Keybind],  Lang:t('menu.open') .. v.name, {
            type = 'client',
            event = 'rsg-shops:openshop',
            args = {v.products, v.name},
        })
        if v.showblip == true then
            local ShopBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.shopcoords)
            SetBlipSprite(ShopBlip,  GetHashKey(Config.Blip.blipSprite), true)
            SetBlipScale(Config.Blip.blipScale, 0.2)
            Citizen.InvokeNative(0x9CB1A1623062F402, ShopBlip, Config.Blip.blipName)
        end
    end
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
