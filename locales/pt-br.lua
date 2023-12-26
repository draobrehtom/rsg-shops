local Translations = {
error = {
    var = 'o texto vai aqui',
},
success = {
    var = 'o texto vai aqui',
},
primary = {
    var = 'to texto vai aqui',
},
menu = {
    open = 'Abrir ',
},
commands = {
    var = 'o texto vai aqui',
},
progressbar = {
    var = 'o texto vai aqui',
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

if GetConvar('rsg_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
