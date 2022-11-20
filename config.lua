Config = {}

Config.Products = {
	["normal"] = {
		[1] = { name = "water",								price = 2, 	amount = 500, info = {}, type = "item", slot = 1 },
		[2] = { name = "bread",								price = 2, 	amount = 500, info = {}, type = "item", slot = 2 },
		[3] = { name = "bandage",							price = 3, 	amount = 500, info = {}, type = "item", slot = 3 },
		[4] = { name = "weapon_kit_binoculars",				price = 25,	amount = 100, info = {}, type = "item", slot = 4 },
		[5] = { name = "weapon_kit_binoculars_improved",	price = 50,	amount = 100, info = {}, type = "item", slot = 5 },
		[6] = { name = "horsebrush",						price = 10,	amount = 100, info = {}, type = "item", slot = 6 },
		[7] = { name = "horselantern",						price = 25,	amount = 100, info = {}, type = "item", slot = 7 },
	},
	["saloon"] = {
		[1] = { name = "water",		price = 2, 	amount = 500, info = {}, type = "item", slot = 1, },
		[2] = { name = "bread",		price = 2, 	amount = 500, info = {}, type = "item", slot = 2, },
		[3] = { name = "beer",		price = 3, 	amount = 500, info = {}, type = "item", slot = 3, },
		[4] = { name = "whiskey",	price = 5, 	amount = 500, info = {}, type = "item", slot = 4, },
		[5] = { name = "coffee",	price = 2, 	amount = 500, info = {}, type = "item", slot = 5, },
	},
	["weapons"] = {
		-- WEAPONS REVOLVER
		[1] = 	{ name = "weapon_revolver_cattleman",				price = 50,		amount = 50,	info = {},	type = "weapon",	slot = 1, },
		[2] = 	{ name = "weapon_revolver_cattleman_mexican",		price = 127,	amount = 50,	info = {},	type = "weapon",	slot = 2, },
		[3] = 	{ name = "weapon_revolver_doubleaction_gambler",	price = 190,	amount = 50,	info = {},	type = "weapon",	slot = 3, },
		[4] = 	{ name = "weapon_revolver_schofield",				price = 192,	amount = 50,	info = {},	type = "weapon",	slot = 4, },
		[5] = 	{ name = "weapon_revolver_navy",					price = 275,	amount = 50,	info = {},	type = "weapon",	slot = 5, },
		[6] = 	{ name = "weapon_revolver_navy_crossover",			price = 349,	amount = 50,	info = {},	type = "weapon",	slot = 6, },	
		[7] = 	{ name = "weapon_revolver_lemat",					price = 317,	amount = 50,	info = {},	type = "weapon",	slot = 7, },
		-- WEAPONS PISTOL
		[8] = 	{ name = "weapon_pistol_volcanic",					price = 270,	amount = 50,	info = {},	type = "weapon",	slot = 8, },
		[9] = 	{ name = "weapon_pistol_semiauto",					price = 537,	amount = 50,	info = {},	type = "weapon",	slot = 9, },
		[10] = 	{ name = "weapon_pistol_mauser",					price = 600,	amount = 50,	info = {},	type = "weapon",	slot = 10, },
		-- WEAPONS RIFLE
		[11] = 	{ name = "weapon_rifle_varmint",					price = 72,		amount = 50,	info = {},	type = "weapon",	slot = 11, },
		[12] = 	{ name = "weapon_rifle_springfield",				price = 156,	amount = 50,	info = {},	type = "weapon",	slot = 12, },
		[13] = 	{ name = "weapon_rifle_boltaction",					price = 216,	amount = 50,	info = {},	type = "weapon",	slot = 13, },
		[14] = 	{ name = "weapon_sniperrifle_rollingblock",			price = 411,	amount = 50,	info = {},	type = "weapon",	slot = 14, },
		-- WEAPONS REPEATER
		[15] = 	{ name = "weapon_repeater_carbine",					price = 90,		amount = 50,	info = {},	type = "weapon",	slot = 15, },
		[16] = 	{ name = "weapon_repeater_evans",					price = 300,	amount = 50,	info = {},	type = "weapon",	slot = 16, },
		[17] = 	{ name = "weapon_repeater_winchester",				price = 243,	amount = 50,	info = {},	type = "weapon",	slot = 17, },
		[18] = 	{ name = "weapon_repeater_henry",					price = 348,	amount = 50,	info = {},	type = "weapon",	slot = 18, },
		-- WEAPONS SHOTGUN
		[19] = 	{ name = "weapon_shotgun_sawedoff",					price = 111,	amount = 50,	info = {},	type = "weapon",	slot = 19, },
		[20] = 	{ name = "weapon_shotgun_doublebarrel",				price = 185,	amount = 50,	info = {},	type = "weapon",	slot = 20, },
		[21] = 	{ name = "weapon_shotgun_semiauto",					price = 540,	amount = 50,	info = {},	type = "weapon",	slot = 21, },
		-- WEAPONS OTHER
		[22] = 	{ name = "weapon_melee_knife",						price = 75,		amount = 50,	info = {},	type = "weapon",	slot = 22, },
		[23] = 	{ name = "weapon_lasso",							price = 5,		amount = 50,	info = {},	type = "weapon",	slot = 23, },
		[24] = 	{ name = "weapon_bow",								price = 10,		amount = 50,	info = {},	type = "weapon",	slot = 24, },
		[25] = 	{ name = "weapon_bow_improved",						price = 30,		amount = 50,	info = {},	type = "weapon",	slot = 25, },
		-- AMMO
		[26] = 	{ name = "ammo_revolver",							price = 0.50,	amount = 500,	info = {},	type = "item",		slot = 26, },
		[27] = 	{ name = "ammo_pistol",								price = 0.50,	amount = 500,	info = {},	type = "item",		slot = 27, },
		[28] = 	{ name = "ammo_rifle",								price = 0.75,	amount = 500,	info = {},	type = "item",		slot = 28, },
		[29] = 	{ name = "ammo_repeater",							price = 0.75,	amount = 500,	info = {},	type = "item",		slot = 29, },
		[30] = 	{ name = "ammo_shotgun",							price = 0.75,	amount = 500,	info = {},	type = "item",		slot = 30, },
		[31] = 	{ name = "ammo_arrow",								price = 0.10,	amount = 500,	info = {},	type = "item",		slot = 31, },

	},
}

-- shop locations and blips
Config.Locations = {
	{
		name = 'Rhodes General Store',
		location = 'gen-rhodes',
		products = "normal",
		shopcoords = vector3(1328.99, -1293.28, 77.02),
		blipsprite = 1475879922,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Valentine General Store',
		location = 'gen-valentine',
		products = "normal",
		shopcoords = vector3(-322.433, 803.797, 117.882),
		blipsprite = 1475879922,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Strawberry General Store',
		location = 'gen-strawberry',
		products = "normal",
		shopcoords = vector3(-1791.49, -386.87, 160.33),
		blipsprite = 1475879922,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Annesburg General Store',
		location = 'gen-annesburg',
		products = "normal",
		shopcoords = vector3(2931.35, 1365.94, 45.19),
		showblip = true
	},
	{
		name = 'Saint Denis General Store',
		location = 'gen-stdenis',
		products = "normal",
		shopcoords = vector3(2859.81, -1200.37, 49.59),
		blipsprite = 1475879922,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Tumbleweed General Store',
		location = 'gen-tumbleweed',
		products = "normal",
		shopcoords = vector3(-5487.613, -2938.54, -0.38),
		blipsprite = 1475879922,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Armadillo General Store',
		location = 'gen-armadillo',
		products = "normal",
		shopcoords = vector3(-3685.56, -2622.59, -13.43),
		blipsprite = 1475879922,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Blackwater General Store',
		location = 'gen-blackwater',
		products = "normal",
		shopcoords = vector3(-785.18, -1323.83, 43.88),
		blipsprite = 1475879922,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Van Horn General Store',
		location = 'gen-vanhorn',
		products = "normal",
		shopcoords = vector3(3027.03, 561.00, 44.72),
		blipsprite = 1475879922,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Valentine Gunsmith',
		location = 'gun-valentine',
		products = "weapons",
		shopcoords = vector3(-281.97, 781.09,119.52),
		blipsprite = 4149098929,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Tumbleweed Gunsmith',
		location = 'gun-tumbleweed',
		products = "weapons",
		shopcoords = vector3(-5508.14, -2964.33,-0.628),
		blipsprite = 4149098929,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Saint Denis Gunsmith',
		location = 'gun-stdenis',
		products = "weapons",
		shopcoords = vector3(2716.42, -1285.42,49.63),
		blipsprite = 4149098929,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Rhodes Gunsmith',
		location = 'gun-rhodes',
		products = "weapons",
		shopcoords = vector3(1322.67, -1323.16,77.88),
		blipsprite = 4149098929,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Annesburg Gunsmith',
		location = 'gun-annesburg',
		products = "weapons",
		shopcoords = vector3(2946.50, 1319.53,44.82),
		blipsprite = 4149098929,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Valentine Saloon',
		location = 'sal-valentine',
		products = "saloon",
		shopcoords = vector3(-311.63, 806.23, 118.98),
		blipsprite = 1879260108,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Tumbleweed Saloon',
		location = 'sal-tumbleweed',
		products = "saloon",
		shopcoords = vector3(-5517.48, -2907.9, -1.75),
		blipsprite = 1879260108,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Armadillo Saloon',
		location = 'sal-armadillo',
		products = "saloon",
		shopcoords = vector3(-3701.42, -2594.44, -13.32),
		blipsprite = 1879260108,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Blackwater Saloon',
		location = 'sal-blackwater',
		products = "saloon",
		shopcoords = vector3(-815.79, -1318.98, 43.68),
		blipsprite = 1879260108,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Rhodes Saloon',
		location = 'sal-rhodes',
		products = "saloon",
		shopcoords = vector3(1341.89, -1375.03, 80.48),
		blipsprite = 1879260108,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Saint Denis Saloon',
		location = 'sal-stdenis',
		products = "saloon",
		shopcoords = vector3(2793.8, -1169.19, 47.92),
		blipsprite = 1879260108,
		blipscale = 0.2,
		showblip = true
	},
	{
		name = 'Van Horn Saloon',
		location = 'sal-vanhorn',
		products = "saloon",
		shopcoords = vector3(2947.97, 526.27, 45.33),
		blipsprite = 1879260108,
		blipscale = 0.2,
		showblip = true
	},
}

-- shop npcs
Config.StoreNpc = {
	
	-- general store npcs
	
	[1] = { -- Valentine General Store
		["Model"] = "U_M_M_ValGenStoreOwner_01", 
		["Pos"] = vector3(-324.1304, 803.4945, 117.88161 -1), 
		["Heading"] = 281.30722,  
		["scenariotype"] = "WORLD_HUMAN_SHOPKEEPER",
		["scenarioanim"] = "WORLD_HUMAN_SHOPKEEPER_MALE_A"
	},
	[2] = { -- Rhodes General Store
		["Model"] = "U_M_M_RhdGenStoreOwner_01", 
		["Pos"] = vector3(1330.0, -1294.281, 77.021736 -1), 
		["Heading"] = 70.938911,  
		["scenariotype"] = "WORLD_HUMAN_SHOPKEEPER",
		["scenarioanim"] = "WORLD_HUMAN_SHOPKEEPER_MALE_A"
	},
	[3] = { -- Saint Denis General Store
		["Model"] = "U_M_M_NbxGeneralStoreOwner_01", 
		["Pos"] = vector3(2859.3151, -1202.211, 49.590873 -1), 
		["Heading"] = 8.7729024,  
		["scenariotype"] = "WORLD_HUMAN_SHOPKEEPER",
		["scenarioanim"] = "WORLD_HUMAN_SHOPKEEPER_MALE_A"
	},
	[4] = { -- Tumbleweed General Store
		["Model"] = "U_F_M_TumGeneralStoreOwner_01", 
		["Pos"] = vector3(-5485.968, -2937.992, -0.399478 -1), 
		["Heading"] = 129.88659,  
		["scenariotype"] = "WORLD_HUMAN_SHOPKEEPER",
		["scenarioanim"] = "WORLD_HUMAN_SHOPKEEPER_MALE_A"
	},
	[5] = { -- Armadillo General Store
		["Model"] = "U_M_M_ARMGENERALSTOREOWNER_01", 
		["Pos"] = vector3(-3687.349, -2623.505, -13.43116 -1),
		["Heading"] = 272.12231,  
		["scenariotype"] = "WORLD_HUMAN_SHOPKEEPER",
		["scenarioanim"] = "WORLD_HUMAN_SHOPKEEPER_MALE_A"
	},
	[6] = { -- Blackwater General Store
		["Model"] = "U_M_O_BlWGeneralStoreOwner_01", 
		["Pos"] = vector3(-784.58, -1322.13, 43.88 -1),
		["Heading"] = 186.08,  
		["scenariotype"] = "WORLD_HUMAN_SHOPKEEPER",
		["scenarioanim"] = "WORLD_HUMAN_SHOPKEEPER_MALE_A"
	},
	[7] = { -- Van Horn General Store
		["Model"] = "U_M_M_WaLGENERALSTOREOWNER_01", 
		["Pos"] = vector3(3025.5554, 562.24865, 44.722095 -1), 
		["Heading"] = 260.9851,  
		["scenariotype"] = "WORLD_HUMAN_SHOPKEEPER",
		["scenarioanim"] = "WORLD_HUMAN_SHOPKEEPER_MALE_A"
	},
	[8] = { -- Strawberry General Store
		["Model"] = "U_M_M_StrGenStoreOwner_01", 
		["Pos"] = vector3(-1789.736, -388.1326, 160.32861 -1), 
		["Heading"] = 54.258308,  
		["scenariotype"] = "WORLD_HUMAN_SHOPKEEPER",
		["scenarioanim"] = "WORLD_HUMAN_SHOPKEEPER_MALE_A"
	},
	
	-- gunsmith npcs
	
	[9] = { -- Valentine Gunsmith
		["Model"] = "U_M_M_ValGunsmith_01", 
		["Pos"] = vector3(-281.1489, 778.89373, 119.50402 -1), 
		["Heading"] = 351.36734,  
		["scenariotype"] = "WORLD_HUMAN_SHOPKEEPER",
		["scenarioanim"] = "WORLD_HUMAN_SHOPKEEPER_MALE_B"
	},
	[10] = { -- Rhodes Gunsmith
		["Model"] = "U_M_M_RhdGunsmith_01", 
		["Pos"] = vector3(1322.492, -1323.108, 77.8889 -1), 
		["Heading"] = 349.6582,  
		["scenariotype"] = "WORLD_HUMAN_SHOPKEEPER",
		["scenarioanim"] = "WORLD_HUMAN_SHOPKEEPER_MALE_B"
	},
	[11] = { -- Saint Denis Gunsmith
		["Model"] = "U_M_M_NbxGunsmith_01", 
		["Pos"] = vector3(2717.288, -1286.779, 49.636463 -1), 
		["Heading"] = 25.519334,  
		["scenariotype"] = "WORLD_HUMAN_SHOPKEEPER",
		["scenarioanim"] = "WORLD_HUMAN_SHOPKEEPER_MALE_B"
	},
	[12] = { -- Tumbleweed Gunsmith
		["Model"] = "U_M_M_TumGunsmith_01", 
		["Pos"] = vector3(-5506.536, -2963.823, -0.636236 -1), 
		["Heading"] = 101.39876,  
		["scenariotype"] = "WORLD_HUMAN_SHOPKEEPER",
		["scenarioanim"] = "WORLD_HUMAN_SHOPKEEPER_MALE_B"
	},
	[13] = { -- Annesburg Gunsmith
		["Model"] = "U_M_M_AsbGunsmith_01", 
		["Pos"] = vector3(2948.4804, 1319.5371, 44.820251 -1), 
		["Heading"] = 76.641601,  
		["scenariotype"] = "WORLD_HUMAN_SHOPKEEPER",
		["scenarioanim"] = "WORLD_HUMAN_SHOPKEEPER_MALE_B"
	},
	
	-- saloon npc
	
	[14] = { -- Valentine Saloon
		["Model"] = "U_M_M_ValBartender_01",
		["Pos"] = vector3(-313.41, 805.97, 118.98 -1),
		["Heading"] = 284.37,
		["scenariotype"] = "WORLD_HUMAN_BAR_DRINK_BARTENDER",
		["scenarioanim"] = "WORLD_HUMAN_BAR_DRINK_BARTENDER_MALE_A"
	},
	[15] = { -- Tumbleweed Saloon
		["Model"] = "U_M_M_TumBartender_01",
		["Pos"] = vector3(-5518.12, -2906.29, -1.75 -1),
		["Heading"] = 206.22,
		["scenariotype"] = "WORLD_HUMAN_BAR_DRINK_BARTENDER",
		["scenarioanim"] = "WORLD_HUMAN_BAR_DRINK_BARTENDER_MALE_A"
	},
	[16] = { -- Armadillo Saloon
		["Model"] = "U_M_O_ARMBARTENDER_01", 
		["Pos"] = vector3(-3699.8, -2594.15, -13.32 -1),
		["Heading"] = 99.87,
		["scenariotype"] = "WORLD_HUMAN_BAR_DRINK_BARTENDER",
		["scenarioanim"] = "WORLD_HUMAN_BAR_DRINK_BARTENDER_MALE_A"
	},
	[17] = { -- Blackwater Saloon
		["Model"] = "U_M_O_BlWBartender_01", 
		["Pos"] = vector3(-817.59, -1318.87, 43.68 -1),
		["Heading"] = 270.64,
		["scenariotype"] = "WORLD_HUMAN_BAR_DRINK_BARTENDER",
		["scenarioanim"] = "WORLD_HUMAN_BAR_DRINK_BARTENDER_MALE_A"
	},
	[18] = { -- Rhodes Saloon
		["Model"] = "U_M_M_RhdBartender_01", 
		["Pos"] = vector3(1340.2, -1374.76, 80.48 -1),
		["Heading"] = 264.44,
		["scenariotype"] = "WORLD_HUMAN_BAR_DRINK_BARTENDER",
		["scenarioanim"] = "WORLD_HUMAN_BAR_DRINK_BARTENDER_MALE_A"
	},
	[19] = { -- StDenis Saloon
		["Model"] = "U_M_M_NbxBartender_02", 
		["Pos"] = vector3(2792.64, -1168.15, 47.93 -1),
		["Heading"] = 244.98,
		["scenariotype"] = "WORLD_HUMAN_BAR_DRINK_BARTENDER",
		["scenarioanim"] = "WORLD_HUMAN_BAR_DRINK_BARTENDER_MALE_A"
	},
	[20] = { -- Van Horn Saloon
		["Model"] = "U_F_M_VHTBARTENDER_01", 
		["Pos"] = vector3(2948.3, 528.12, 45.34 -1),
		["Heading"] = 181.85,
		["scenariotype"] = "WORLD_HUMAN_BAR_DRINK_BARTENDER",
		["scenarioanim"] = "WORLD_HUMAN_BAR_DRINK_BARTENDER_MALE_A"
	},

}
