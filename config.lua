Config = {}

---------------------------------
-- settings
---------------------------------
Config.Keybind         = 'J' -- keybind prompt to open shop

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
    ['armoury'] = {
        [1] = { name = 'weapon_revolver_cattleman',  price = 0, amount = 10, info = {}, type = 'weapon', slot = 1 },
        [2] = { name = 'weapon_repeater_winchester', price = 0, amount = 10, info = {}, type = 'weapon', slot = 2 },
        [3] = { name = 'ammo_revolver',              price = 0, amount = 10, info = {}, type = 'item',   slot = 3 },
        [4] = { name = 'ammo_repeater',              price = 0, amount = 10, info = {}, type = 'item',   slot = 4 },
    },
    ['horse'] = {
        [1] = { name = 'horse_brush',          price = 5,  amount = 500,  info = {}, type = 'item', slot = 1, },
        [2] = { name = 'horse_lantern',        price = 10, amount = 500,  info = {}, type = 'item', slot = 2, },
        [3] = { name = 'consumable_sugarcube', price = 1,  amount = 500, info = {}, type = 'item', slot = 3, },
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
        label = 'Rhodes General Store',
        name = 'gen-rhodes',
        products = 'normal',
        shopcoords = vector3(1328.99, -1293.28, 77.02 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        label = 'Valentine General Store',
        name = 'gen-valentine',
        products = 'normal',
        shopcoords = vector3(-322.433, 803.797, 117.882 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        label = 'Strawberry General Store',
        name = 'gen-strawberry',
        products = 'normal',
        shopcoords = vector3(-1791.49, -386.87, 160.33 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        label = 'Annesburg General Store',
        name = 'gen-annesburg',
        products = 'normal',
        shopcoords = vector3(2931.35, 1365.94, 45.19 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        label = 'Saint Denis General Store',
        name = 'gen-stdenis',
        products = 'normal',
        shopcoords = vector3(2859.81, -1200.37, 49.59 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        label = 'Tumbleweed General Store',
        name = 'gen-tumbleweed',
        products = 'normal',
        shopcoords = vector3(-5487.613, -2938.54, -0.38 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        label = 'Armadillo General Store',
        name = 'gen-armadillo',
        products = 'normal',
        shopcoords = vector3(-3685.56, -2622.59, -13.43 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        label = 'Blackwater General Store',
        name = 'gen-blackwater',
        products = 'normal',
        shopcoords = vector3(-785.18, -1323.83, 43.88 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        label = 'Van Horn General Store',
        name = 'gen-vanhorn',
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
        label = 'Valentine Gunsmith',
        name = 'wep-valentine',
        products = 'weapons',
        shopcoords = vector3(-281.24, 780.71, 119.53),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true
    },
    {
        label = 'Tumbleweed Gunsmith',
        name = 'wep-tumbleweed',
        products = 'weapons',
        shopcoords = vector3(-5508.18, -2964.27, -0.63),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true
    },
    {
        label = 'Saint Denis Gunsmith',
        name = 'wep-stdenis',
        products = 'weapons',
        shopcoords = vector3(2716.42, -1285.42, 49.63),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true
    },
    {
        label = 'Rhodes Gunsmith',
        name = 'wep-rhodes',
        products = 'weapons',
        shopcoords = vector3(1322.75, -1321.47, 77.89),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true
    },
    {
        label = 'Annesburg Gunsmith',
        name = 'wep-annesburg',
        products = 'weapons',
        shopcoords = vector3(2946.50, 1319.53, 44.82),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true
    },

}
