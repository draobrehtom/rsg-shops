Config = {}

---------------------------------
-- settings
---------------------------------
Config.Keybind         = 'J' -- keybind prompt to open shop
Config.StoreAlwaysOpen = true
Config.OpenTime        = 6 -- hrs : 24hour clock
Config.CloseTime       = 18 -- hrs : 24hour clock

---------------------------------
-- shop items
---------------------------------
Config.Products = {
    ['normal'] = {
        [1] = { name = 'consumable_bread_roll',     price = 0.10, amount = 500, info = {}, type = 'item', slot = 1 },
        [2] = { name = 'consumable_water_filtered', price = 0.10, amount = 500, info = {}, type = 'item', slot = 2 },
    },
    ['weapons'] = {
        [1] = { name = 'weapon_revolver_cattleman',            price = 50,   amount = 100, info = {}, type = 'weapon', slot = 1 },
        [2] = { name = 'weapon_revolver_doubleaction',         price = 127,  amount = 100, info = {}, type = 'weapon', slot = 2 },
        [3] = { name = 'weapon_revolver_doubleaction_gambler', price = 190,  amount = 100, info = {}, type = 'weapon', slot = 3 },
        [4] = { name = 'weapon_revolver_lemat',                price = 317,  amount = 100, info = {}, type = 'weapon', slot = 4 },
        [5] = { name = 'weapon_revolver_navy',                 price = 275,  amount = 100, info = {}, type = 'weapon', slot = 5 },
        [6] = { name = 'weapon_revolver_schofield',            price = 192,  amount = 100, info = {}, type = 'weapon', slot = 6 },
        [7] = { name = 'weapon_pistol_mauser',                 price = 600,  amount = 100, info = {}, type = 'weapon', slot = 7 },
        [8] = { name = 'weapon_pistol_semiauto',               price = 537,  amount = 100, info = {}, type = 'weapon', slot = 8 },
        [9] = { name = 'weapon_pistol_volcanic',               price = 270,  amount = 100, info = {}, type = 'weapon', slot = 9 },
        [10] = { name = 'weapon_rifle_boltaction',             price = 216,  amount = 100, info = {}, type = 'weapon', slot = 10 },
        [11] = { name = 'weapon_rifle_elephant',               price = 580,  amount = 100, info = {}, type = 'weapon', slot = 11 },
        [12] = { name = 'weapon_rifle_springfield',            price = 156,  amount = 100, info = {}, type = 'weapon', slot = 12 },
        [13] = { name = 'weapon_rifle_varmint',                price = 72,   amount = 100, info = {}, type = 'weapon', slot = 13 },
        [14] = { name = 'weapon_repeater_carbine',             price = 90,   amount = 100, info = {}, type = 'weapon', slot = 14 },
        [15] = { name = 'weapon_repeater_evans',               price = 300,  amount = 100, info = {}, type = 'weapon', slot = 15 },
        [16] = { name = 'weapon_repeater_winchester',          price = 243,  amount = 100, info = {}, type = 'weapon', slot = 16 },
        [17] = { name = 'weapon_repeater_henry',               price = 348,  amount = 100, info = {}, type = 'weapon', slot = 17 },
        [18] = { name = 'weapon_sniperrifle_rollingblock',     price = 411,  amount = 100, info = {}, type = 'weapon', slot = 18 },
        [19] = { name = 'weapon_sniperrifle_carcano',          price = 456,  amount = 100, info = {}, type = 'weapon', slot = 19 },
        [20] = { name = 'ammo_revolver',                       price = 1,    amount = 100, info = {}, type = 'item',   slot = 20 },
        [21] = { name = 'ammo_pistol',                         price = 1,    amount = 100, info = {}, type = 'item',   slot = 21 },
        [22] = { name = 'ammo_rifle',                          price = 1,    amount = 100, info = {}, type = 'item',   slot = 22 },
        [23] = { name = 'ammo_repeater',                       price = 1,    amount = 100, info = {}, type = 'item',   slot = 23 },
        [24] = { name = 'ammo_rifle_elephant',                 price = 1,    amount = 100, info = {}, type = 'item',   slot = 24 },
        [25] = { name = 'ammo_varmint',                        price = 1,    amount = 100, info = {}, type = 'item',   slot = 25 },
    },
}

---------------------------------
-- shop locations and blips
---------------------------------
Config.StoreLocations = {
    ---------------------------------
    -- general store
    ---------------------------------
    {
        name = 'Rhodes General Store',
        location = 'gen-rhodes',
        products = 'normal',
        shopcoords = vector3(1328.99, -1293.28, 77.02 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = 'Valentine General Store',
        location = 'gen-valentine',
        products = 'normal',
        shopcoords = vector3(-322.433, 803.797, 117.882 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = 'Strawberry General Store',
        location = 'gen-strawberry',
        products = 'normal',
        shopcoords = vector3(-1791.49, -386.87, 160.33 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = 'Annesburg General Store',
        location = 'gen-annesburg',
        products = 'normal',
        shopcoords = vector3(2931.35, 1365.94, 45.19 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = 'Saint Denis General Store',
        location = 'gen-stdenis',
        products = 'normal',
        shopcoords = vector3(2859.81, -1200.37, 49.59 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = 'Tumbleweed General Store',
        location = 'gen-tumbleweed',
        products = 'normal',
        shopcoords = vector3(-5487.613, -2938.54, -0.38 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = 'Armadillo General Store',
        location = 'gen-armadillo',
        products = 'normal',
        shopcoords = vector3(-3685.56, -2622.59, -13.43 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = 'Blackwater General Store',
        location = 'gen-blackwater',
        products = 'normal',
        shopcoords = vector3(-785.18, -1323.83, 43.88 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = 'Van Horn General Store',
        location = 'gen-vanhorn',
        products = 'normal',
        shopcoords = vector3(3027.03, 561.00, 44.72 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    ---------------------------------
    -- gunsmith
    ---------------------------------
    {
        name = 'Valentine Gunsmith',
        location = 'wep-valentine',
        products = 'weapons',
        shopcoords = vector3(-281.24, 780.71, 119.53),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = 'Tumbleweed Gunsmith',
        location = 'wep-tumbleweed',
        products = 'weapons',
        shopcoords = vector3(-5508.18, -2964.27, -0.63),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = 'Saint Denis Gunsmith',
        location = 'wep-stdenis',
        products = 'weapons',
        shopcoords = vector3(2716.42, -1285.42, 49.63),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = 'Rhodes Gunsmith',
        location = 'wep-rhodes',
        products = 'weapons',
        shopcoords = vector3(1322.75, -1321.47, 77.89),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = 'Annesburg Gunsmith',
        location = 'wep-annesburg',
        products = 'weapons',
        shopcoords = vector3(2946.50, 1319.53, 44.82),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true
    },

}
