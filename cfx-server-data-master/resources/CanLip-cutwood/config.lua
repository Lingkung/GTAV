Config = {}

Config.Locale = 'en'

Config.Price = 500 -- ราคาที่ขายต่อ 1 แพ็ค 

Config.Locations = {
	{ x = -164.3, y = -1067.58, z = 41.14, heading = 257.66 } -- NPC
}

Config.CircleZones = {
	woodField = {coords = vector3(2504.1, 3316.1, 51.2), name = _U('blip_woodfield'), color = 56, sprite = 237, radius = 1.0},
	woodCut = {coords = vector3(-551.1, 5328.1, 73.2), name = _U('blip_woodPack'), color = 56, sprite = 237, radius = 1.0},	
	woodSell = {coords = vector3(-164.3, -1067.58, 41.14), name = _U('blip_woodSell'), color = 56, sprite = 237, radius = 1.0},	
}