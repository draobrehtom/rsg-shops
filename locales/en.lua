local Translations = {

    client = {
        lang_1 = 'Open ',
        lang_2 = 'Store Closed',
        lang_3 = 'come back after ',
        lang_4 = 'am',
    },

}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

-- Lang:t('client.lang_1')
-- Lang:t('config.lang_1')
