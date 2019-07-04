Config = {}

Config.Locale = 'th'

Config.Delays = {
	MethProcessing = 500 * 10
}

Config.DrugDealerItems = {
	meth = 500
}

Config.LicenseEnable = true -- enable processing licenses? The player will be required to buy a license in order to process drugs. Requires esx_license

Config.LicensePrices = {
	meth_processing = {label = _U('license_meth'), price = 30000}
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.CircleZones = {
	MethField = {coords = vector3(3343.4, 5491.4, 19.88), color = 25, sprite = 496, radius = 1.0},
	MethProcessing = {coords = vector3(1665.9, 0.48, 166.12), color = 25, sprite = 496, radius = 100.0},

	DrugDealer = {coords = vector3(1717.28, 4790.49, 41.99), color = 6, sprite = 378, radius = 25.0},
}