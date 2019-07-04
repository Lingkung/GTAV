Config = {}

Config.Locale = 'th'

Config.Delays = {
	WeedProcessing = 500 * 10
}

Config.DrugDealerItems = {
	cannabis = 0
}

Config.LicenseEnable = true -- enable processing licenses? The player will be required to buy a license in order to process drugs. Requires esx_license

Config.LicensePrices = {
	weed_processing = {label = _U('license_weed'), price = 15000}
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.CircleZones = {
	WeedField = {coords = vector3(-2120.79, 2539.42, 3.09), color = 25, sprite = 496, radius = 100.0},
	WeedProcessing = {coords = vector3(-1156.39, -1569.51, 4.43), color = 25, sprite = 496, radius = 100.0},

	DrugDealer = {coords = vector3(-999999.02, -99999.98, 9999.66), color = 6, sprite = 378, radius = 25.0},
}