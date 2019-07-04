Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 102, g = 0, b = 102 }
Config.RespawnDelayAfterRPDeath   = 5 * 60 * 1000
Config.RespawnDelayNoAmbulance	  = 30 * 1000
Config.MenuRespawnToHospitalDelay = 10 * 10 * 1000
Config.EnableSocietyOwnedVehicles = false
Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true
Config.EnablePlayerManagement     = true
Config.ShowDeathTimer             = true
Config.EnableNonFreemodePeds      = true
Config.EarlyRespawn               = false
Config.EarlyRespawnFine           = false
Config.ReviveFine				  = 1000
Config.EarlyRespawnFineAmount     = 1000
Config.Locale                     = 'en'

Config.Blip = {
  Pos     = { x = 297.29, y = -583.83, z = 43.13 },
  Sprite  = 61,
  Display = 4,
  Scale   = 1.2,
  Colour  = 74,
}

Config.Zones = {

 
  HospitalInteriorEntering1 = {
    Pos  = { x = 1151.447, y = -1529.491, z = 34.375 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },

  HospitalInteriorInside1 = {
    Pos  = { x = 349.18774414063, y = -583.44537353516, z = 44.016368865967 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },

  HospitalInteriorOutside1 = {
    Pos  = { x = 1153.364, y = -1525.731, z = 33.843 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },

  HospitalInteriorExit1 = {
    Pos  = { x = 253.612, y = -1371.66, z = 28.647 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },

  HospitalInteriorEntering2 = {
    Pos  = { x = 1137.181, y = -1597.504, z = 33.692 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },

  HospitalInteriorInside2 = {
    Pos  = { x = 240.508,  y = -1360.565, z = 28.647 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },

  HospitalInteriorOutside2 = {
    Pos  = { x = 1137.922, y = -1601.434, z = 33.692 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },

  HospitalInteriorExit2 = {
    Pos  = { x = 238.587,  y = -1359.113, z = 28.647 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },

  AmbulanceActions = {
    Pos  = { x = 309.1100769043, y = -602.68444824219, z = 42.291835784912 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },

  VehicleSpawner = {
    Pos  = { x = 317.77160644531, y = -599.0126953125, z = 42.291828155518 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },

  VehicleSpawnPoint = {
    Pos  = { x = 330.23281860352, y = -5549.67877197266, z = 27.743782043457 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },

  VehicleDeleter = {
    Pos  = { x = 339.35794067383, y = -561.55010986328, z = 27.743782043457 },
    Size = { x = 3.0, y = 3.0, z = 2.0 },
    Type = 1
  }

}
