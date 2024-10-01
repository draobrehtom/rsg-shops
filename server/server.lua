local RSGCore = exports['rsg-core']:GetCoreObject()

-------------------------
-- open shop
-------------------------
RegisterNetEvent('rsg-shops:server:openstore', function(products, name, label)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if not Player then return end
    local playerjobtype = Player.PlayerData.job.type
    if products == 'armoury' and playerjobtype ~= 'leo' then return end
    local itemTable = Config.Products[products]
    exports['rsg-inventory']:CreateShop({
        name = name,
        label = lable,
        slots = #itemTable,
        items = itemTable
    })
    exports['rsg-inventory']:OpenShop(source, name)
end)
