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
        open = 'Abrir ',
    },
    commands = {
        var = 'text goes here',
    },
    progressbar = {
        var = 'text goes here',
    },
    label = {
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
    },
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
