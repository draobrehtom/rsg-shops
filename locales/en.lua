local Translations = {

    client = {
        lang_1 = 'Open ',
        lang_2 = 'Store Closed',
        lang_3 = 'come back after ',
        lang_4 = 'am',
    },

    config = {
        lang_1 = 'Rhodes General Store',
        lang_2 = 'Valentine General Store',
        lang_3 = 'Strawberry General Store',
        lang_4 = 'Annesburg General Store',
        lang_5 = 'Saint Denis General Store',
        lang_6 = 'Tumbleweed General Store',
        lang_7 = 'Armadillo General Store',
        lang_8 = 'Blackwater General Store',
        lang_9 = 'Van Horn General Store',
        lang_10 = 'Valentine Gunsmith',
        lang_11 = 'Tumbleweed Gunsmith',
        lang_12 = 'Saint Denis Gunsmith',
        lang_13 = 'Rhodes Gunsmith',
        lang_14 = 'Annesburg Gunsmith',
    },

}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

-- Lang:t('client.lang_1')
-- Lang:t('config.lang_1')
