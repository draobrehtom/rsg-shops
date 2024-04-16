Config = {}

-- settings
Config.Keybind = 'J' -- keybind prompt to open shop
Config.StoreAlwaysOpen = false
Config.OpenTime = 6 -- hrs : 24hour clock
Config.CloseTime = 18 -- hrs : 24hour clock

Config.Products = {
    ["normal"] = {
        [1] = { name = "bread", price = 0.50, amount = 500, info = {}, type = "item", slot = 1 },
    },
    ["weapons"] = {
        [1] = { name = "weapon_revolver_cattleman", price = 50,   amount = 500, info = {}, type = "weapon", slot = 1 },
        [2] = { name = "ammo_revolver",             price = 0.50, amount = 500, info = {}, type = "item",   slot = 2 },
    },
}

-- shop locations and blips
Config.StoreLocations = {
    
    -- general store
    
    {
        name = Lang:t('label.rho_name_store'),
        location = 'gen-rhodes',
        products = "normal",
        shopcoords = vector3(1328.99, -1293.28, 77.02 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = Lang:t('label.val_name_store'),
        location = 'gen-valentine',
        products = "normal",
        shopcoords = vector3(-322.433, 803.797, 117.882 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = Lang:t('label.str_name_store'),
        location = 'gen-strawberry',
        products = "normal",
        shopcoords = vector3(-1791.49, -386.87, 160.33 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = Lang:t('label.ann_name_store'),
        location = 'gen-annesburg',
        products = "normal",
        shopcoords = vector3(2931.35, 1365.94, 45.19 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = Lang:t('label.sai_name_store'),
        location = 'gen-stdenis',
        products = "normal",
        shopcoords = vector3(2859.81, -1200.37, 49.59 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = Lang:t('label.tum_name_store'),
        location = 'gen-tumbleweed',
        products = "normal",
        shopcoords = vector3(-5487.613, -2938.54, -0.38 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = Lang:t('label.arm_name_store'),
        location = 'gen-armadillo',
        products = "normal",
        shopcoords = vector3(-3685.56, -2622.59, -13.43 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = Lang:t('label.bla_name_store'),
        location = 'gen-blackwater',
        products = "normal",
        shopcoords = vector3(-785.18, -1323.83, 43.88 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = Lang:t('label.van_name_store'),
        location = 'gen-vanhorn',
        products = "normal",
        shopcoords = vector3(3027.03, 561.00, 44.72 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true
    },

    -- gunsmith
    
    {
        name = Lang:t('label.val_name_gunsmith'),
        location = 'wep-valentine',
        products = "weapons",
        shopcoords = vector3(-281.24, 780.71, 119.53),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = Lang:t('label.tum_name_gunsmith'),
        location = 'wep-tumbleweed',
        products = "weapons",
        shopcoords = vector3(-5508.18, -2964.27, -0.63),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = Lang:t('label.sai_name_gunsmith'),
        location = 'wep-stdenis',
        products = "weapons",
        shopcoords = vector3(2716.42, -1285.42, 49.63),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = Lang:t('label.rho_name_gunsmith'),
        location = 'wep-rhodes',
        products = "weapons",
        shopcoords = vector3(1322.75, -1321.47, 77.89),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true
    },
    {
        name = Lang:t('label.ann_name_gunsmith'),
        location = 'wep-annesburg',
        products = "weapons",
        shopcoords = vector3(2946.50, 1319.53, 44.82),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true
    },

}
