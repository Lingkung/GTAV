Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }

Config.ReviveReward               = 700  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = true -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'en'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 1 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 2 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = false

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint = { coords = vector3(341.0, -1397.3, 32.5), heading = 48.5 }

Config.Hospitals = {
	
	Pillbox = {

		Blip = {
			coords = vector3(292.3, -583.6, 43.2),
			sprite = 61,
			scale  = 1.2,
			color  = 2
		},

		AmbulanceActions = {
			vector3(325.0, -580.5, 42.3)
		},

		Pharmacies = {
			vector3(310.4, -599.1, 42.3)
		},

		Vehicles = {
			{
				Spawner = vector3(299.7, -579.5, 43.3),
				InsideShop = vector3(446.7, -1355.6, 43.5),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(286.0, -595.7, 43.1), heading = 338.6, radius = 4.0 },
					{ coords = vector3(290.3, -597.3, 43.2), heading = 338.6, radius = 4.0 },
					{ coords = vector3(294.4, -585.6, 43.2), heading = 338.6, radius = 4.0 },
					{ coords = vector3(289.9, -583.9, 43.2), heading = 338.6, radius = 4.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(344.3, -580.7, 74.2),
				InsideShop = vector3(305.6, -1419.7, 41.5),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(352.0, -588.2, 74.2), heading = 344.1, radius = 10.0 }
				}
			}
		},

		FastTravels = {
			{
				From = vector3(360.1, -585.0, 27.7),
				To = { coords = vector3(336.9, -591.4, 43.3), heading = 67.3 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(339.3, -592.5, 42.3),
				To = { coords = vector3(356.2, -597.1, 28.8), heading = 253.5 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			}
		},

		FastTravelsPrompt = {
			{
				From = vector3(319.7, -579.9, 43.3),
				To = { coords = vector3(339.9, -586.7, 74.2), heading = 249.1 },
				Marker = { type = 34, x = 1.0, y = 1.0, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = true },
				Prompt = 'Press ~INPUT_CONTEXT~ to fast travel to the roof.'
			},

			{
				From = vector3(339.3, -583.9, 74.2),
				To = { coords = vector3(320.2, -577.1, 43.3), heading = 255.1 },
				Marker = { type = 42, x = 1.0, y = 1.0, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = true },
				Prompt = 'Press ~INPUT_CONTEXT~ to fast travel to the hospital.'
			}
		}
	}
}

Config.AuthorizedVehicles = {

	ambulance = {
		{ model = 'bcambulance', label = 'Ambulance Van', price = 5000}
	},

	doctor = {
		{ model = 'bcambulance', label = 'Ambulance Van', price = 4500}
	},

	chief_doctor = {
		{ model = 'bcambulance', label = 'Ambulance Van', price = 3000}
	},

	boss = {
		{ model = 'bcambulance', label = 'Ambulance Van', price = 2000}
	}

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 150000 }
	},

	chief_doctor = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 150000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 300000 }
	},

	boss = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 10000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }
	}

}
