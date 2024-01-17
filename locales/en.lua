local Translations = {
    error = {
        var = 'text goes here',
    },
    success = {
        var = 'text goes here',
    },
    primary = {
        var = 'text goes here',
    },
    menu = {
        open = 'Open ',
    },
    commands = {
        var = 'text goes here',
    },
    progressbar = {
        var = 'text goes here',
    },
    label = {
        -- general stores
        store_blip_name = 'General Store',
        val_name_store = 'Valentine General Store',
        rho_name_store = 'Rhodes General Store',
        str_name_store = 'Strawberry General Store',
        ann_name_store = 'Annesburg General Store',
        sai_name_store = 'Saint Denis General Store',
        tum_name_store = 'Tumbleweed General Store',
        arm_name_store = 'Armadillo General Store',
        bla_name_store = 'Blackwater General Store',
        van_name_store = 'Van Horn General Store',
        -- weapon shops
        val_name_gunsmith = 'Valentine Gunsmith',
        tum_name_gunsmith = 'Tumbleweed Gunsmith',
        sai_name_gunsmith = 'Saint Denis Gunsmith',
        rho_name_gunsmith = 'Rhodes Gunsmith',
        ann_name_gunsmith = 'Annesburg Gunsmith',
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
