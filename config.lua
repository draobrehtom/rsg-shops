Config = {}

---------------------------------
-- settings
---------------------------------
Config.Keybind          = 'J' -- keybind prompt to open shop
Config.EnableTarget	    = true -- 'true' or 'false'
Config.FadeIn           = true -- 'true' or 'false' npc Fade In
Config.DistanceSpawn    = 20 -- number distance npc

---------------------------------
-- shop items

-- amount: default stock (remove to enable unlimited stock)
-- buyPrice: enables selling items to shop
-- maxStock: limits how much items players can sell to shop
-- minQuality: minimum quality that can be sold to shop (default 1)
-- restock: amount of items to be restocked per restock cycle

-- example: { name = 'bread', amount = 50, price = 0.10, buyPrice = 0.05, maxStock = 100, minQuality = 50, restock = 10 },
---------------------------------
Config.Products = {
    ['normal'] = {
        { name = 'bread', amount = 50, price = 0.10 },
        { name = 'water', amount = 50, price = 0.10 },
    },
    ['weapons'] = {
        { name = 'weapon_revolver_cattleman',            amount = 1, price = 50 },
        { name = 'weapon_revolver_doubleaction',         amount = 1, price = 127 },
        { name = 'weapon_revolver_doubleaction_gambler', amount = 1, price = 190 },
        { name = 'weapon_revolver_lemat',                amount = 1, price = 317 },
        { name = 'weapon_revolver_navy',                 amount = 1, price = 275 },
        { name = 'weapon_revolver_schofield',            amount = 1, price = 192 },
        { name = 'weapon_pistol_mauser',                 amount = 1, price = 600 },
        { name = 'weapon_pistol_semiauto',               amount = 1, price = 537 },
        { name = 'weapon_pistol_volcanic',               amount = 1, price = 270 },
        { name = 'weapon_rifle_boltaction',              amount = 1, price = 216 },
        { name = 'weapon_rifle_elephant',                amount = 1, price = 580 },
        { name = 'weapon_rifle_springfield',             amount = 1, price = 156 },
        { name = 'weapon_rifle_varmint',                 amount = 1, price = 72 },
        { name = 'weapon_repeater_carbine',              amount = 1, price = 90 },
        { name = 'weapon_repeater_evans',                amount = 1, price = 300 },
        { name = 'weapon_repeater_winchester',           amount = 1, price = 243 },
        { name = 'weapon_repeater_henry',                amount = 1, price = 348 },
        { name = 'weapon_sniperrifle_rollingblock',      amount = 1, price = 411 },
        { name = 'weapon_sniperrifle_carcano',           amount = 1, price = 456 },
        { name = 'ammo_box_revolver',                    amount = 10, price = 10 },
        { name = 'ammo_box_pistol',                      amount = 10, price = 10 },
        { name = 'ammo_box_rifle',                       amount = 10, price = 10 },
        { name = 'ammo_box_repeater',                    amount = 10, price = 10 },
        { name = 'ammo_box_shotgun',                     amount = 10, price = 10 },
        { name = 'ammo_box_rifle_elephant',              amount = 10, price = 10 },
    },
    ['armoury'] = {
        { name = 'weapon_revolver_cattleman',  amount = 1, price = 0 },
        { name = 'weapon_repeater_winchester', amount = 1, price = 0 },
        { name = 'ammo_box_revolver',          amount = 10, price = 0 },
        { name = 'ammo_box_repeater',          amount = 10, price = 0 },
    },
    ['horse'] = {
        { name = 'horse_brush',   amount = 50, price = 5 },
        { name = 'horse_lantern', amount = 50, price = 10 },
        { name = 'sugarcube',     amount = 50, price = 1 },
    },
    ['prison'] = {
        { name = 'bread', amount = 50, price = 0.10 },
        { name = 'water', amount = 50, price = 0.10 },
    },
    ['medic'] = {
        { name = 'bandage',  amount = 50, price = 0 },
        { name = 'firstaid', amount = 50, price = 0 }
    },
    ['watchmaker'] = {
        { name = 'pocket_watch',  amount = 5, price = 40 },
        { name = 'pocket_watch_gold', amount = 5, price = 100 },
        { name = 'pocket_watch_platinum', amount = 5, price = 150 },
        { name = 'pocket_watch_reutlinge', amount = 5, price = 25 },
        { name = 'pocket_watch_silver', amount = 5, price = 75 },
        { name = 'pocket_watch_brass', amount = 5, price = 250 },
        { name = 'pocket_watch_damaged', amount = 5, price = 50 },
        { name = 'pocket_watch_old', amount = 5, price = 10 },
        { name = 'pocket_watch_p_si', amount = 5, price = 1 },
        { name = 'pocket_compas', amount = 5, price = 1 },
    },
    ['hunting'] = {
        { name = 'saddlebag',     amount = 50, price = 1 },
        { name = 'legendarymap', amount = 5, price = 50 },
    },
}

---------------------------------
-- shop locations and blips

-- persistentStock (true/false): enables stock to persist over server restart
---------------------------------
Config.StoreLocations = {
    ---------------------------------
    -- general store
    ---------------------------------
    {
        label = 'Rhodes General Store',
        name = 'gen-rhodes',
        products = 'normal',
        shopcoords = vector3(1328.99, -1293.28, 77.02),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(1328.99, -1293.28, 77.02, 300.05),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Valentine General Store',
        name = 'gen-valentine',
        products = 'normal',
        shopcoords = vector3(-322.433, 803.797, 117.882),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(-322.433, 803.797, 117.882, 300.05),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Strawberry General Store',
        name = 'gen-strawberry',
        products = 'normal',
        shopcoords = vector3(-1791.49, -386.87, 160.33),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(-1791.49, -386.87, 160.33, 300.05),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Annesburg General Store',
        name = 'gen-annesburg',
        products = 'normal',
        shopcoords = vector3(2931.35, 1365.94, 45.19),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(2931.35, 1365.94, 45.19, 300.05),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Saint Denis General Store',
        name = 'gen-stdenis',
        products = 'normal',
        shopcoords = vector3(2859.81, -1200.37, 49.59),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(2859.81, -1200.37, 49.59, 300.05),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Tumbleweed General Store',
        name = 'gen-tumbleweed',
        products = 'normal',
        shopcoords = vector3(-5487.613, -2938.54, -0.38),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(-5487.613, -2938.54, -0.38, 300.05),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Armadillo General Store',
        name = 'gen-armadillo',
        products = 'normal',
        shopcoords = vector3(-3685.56, -2622.59, -13.43),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(-3685.56, -2622.59, -13.43, 300.05),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Blackwater General Store',
        name = 'gen-blackwater',
        products = 'normal',
        shopcoords = vector3(-785.18, -1323.83, 43.88),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(-785.18, -1323.83, 43.88, 300.05),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Van Horn General Store',
        name = 'gen-vanhorn',
        products = 'normal',
        shopcoords = vector3(3027.03, 561.00, 44.72),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(3027.03, 561.00, 44.72, 300.05),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    ---------------------------------
    -- gunsmith
    ---------------------------------
    {
        label = 'Valentine Gunsmith',
        name = 'wep-valentine',
        products = 'weapons',
        shopcoords = vector3(-281.24, 780.71, 119.53),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(-281.24, 780.71, 119.53, 300.05),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Tumbleweed Gunsmith',
        name = 'wep-tumbleweed',
        products = 'weapons',
        shopcoords = vector3(-5508.18, -2964.27, -0.63),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(-5508.18, -2964.27, -0.63, 300.05),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Saint Denis Gunsmith',
        name = 'wep-stdenis',
        products = 'weapons',
        shopcoords = vector3(2716.42, -1285.42, 49.63),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(2716.42, -1285.42, 49.63, 300.05),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Rhodes Gunsmith',
        name = 'wep-rhodes',
        products = 'weapons',
        shopcoords = vector3(1322.75, -1321.47, 77.89),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(1322.75, -1321.47, 77.89, 300.05),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Annesburg Gunsmith',
        name = 'wep-annesburg',
        products = 'weapons',
        shopcoords = vector3(2946.50, 1319.53, 44.82),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(2946.50, 1319.53, 44.82, 300.05),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    ---------------------------------
    -- watchmaker
    ---------------------------------
    {
        label = 'Valentine Watchmaker',
        name = 'wat-valentine',
        products = 'watchmaker',
        shopcoords = vector3(1284.21, -6871.06, 43.4),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(1284.21, -6871.06, 43.4, 300.05),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
        shopdata = { }
    },
    {
        label = 'Tumbleweed Watchmaker',
        name = 'wat-tumbleweed',
        products = 'watchmaker',
        shopcoords = vector3(-3682.03, -2626.45, -13.43),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(-3682.03, -2626.45, -13.43, 300.05),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
        shopdata = { }
    },
    {
        label = 'St Denis Watchmaker',
        name = 'wat-stdenis',
        products = 'watchmaker',
        shopcoords = vector3(-322.433, 803.797, 117.8823),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(-322.433, 803.797, 117.8823, 300.05),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
        shopdata = { }
    },
    ---------------------------------
    -- hunting
    ---------------------------------
    {
        label = ' Hunting',
        name = 'hun-valentine',
        products = 'hunting',
        shopcoords = vector3(-34.52, 1218.39, 172.80),
        npcmodel = `u_m_m_bwmstablehand_01`,
        npccoords = vector4(-34.52, 1218.39, 172.80, 300.05),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
        shopdata = { }
    },
}
