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
}

if GetConvar('rsg_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
