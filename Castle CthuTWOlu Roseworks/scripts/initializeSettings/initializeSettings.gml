/// @description Initialize all settings

//Open the ini file for reading
ini_open("Settings.ini")

//Sound Settings
global.ambienceVolume = ini_read_real("Sound", "ambienceVolume", 1)
global.effectVolume = ini_read_real("Sound", "effectVolume", 1)
global.musicVolume = ini_read_real("Sound", "musicVolume", 1)
global.masterVolume = ini_read_real("Sound", "masterVolume", 1)

//Movement Keybindings
global.upKey = ini_read_real("Controls", "up",  ord("W"))
global.downKey = ini_read_real("Controls", "down", ord("S"))
global.leftKey = ini_read_real("Controls", "left",  ord("A"))
global.rightKey = ini_read_real("Controls", "right",  ord("D"))
global.inventoryKey = ini_read_real("Controls", "inventory",  vk_tab)
global.defendKey = ini_read_real("Controls", "defend",  vk_space)
global.sneakKey = ini_read_real("Controls", "sneak",  ord("C"))

//Item Keybindings
global.spellKey[1] = ini_read_real("Controls", "item1", ord("1"))
global.spellKey[2] = ini_read_real("Controls", "item2", ord("2"))
global.spellKey[3] = ini_read_real("Controls", "item3", ord("3"))
global.spellKey[4] = ini_read_real("Controls", "item4", ord("4"))
global.spellKey[5] = ini_read_real("Controls", "item5", ord("5"))

//Other Keybindings
global.reloadKey = ini_read_real("Controls", "reload",  ord("R"))
global.interactKey = ini_read_real("Controls", "interact",  ord("E"))
global.throwKey = ini_read_real("Controls", "throw",  vk_shift)
global.emptyKey = ini_read_real("Controls", "empty",  ord("T"))

//Gameplay
global.dodgeAssist= ini_read_real("Gameplay", "dodgeAssist", 1)
global.perfectAssist = ini_read_real("Gameplay", "perfectAssist", 1)
global.lightAssist = ini_read_real("Gameplay", "lightAssist", 1)

//Visuals
global.frameRate = ini_read_real("Visuals", "fps", 60)
global.effectDensity = ini_read_real("Visuals", "effects", 1)
global.reflections = ini_read_real("Visuals", "reflections", 1)

//Close the ini file
ini_close()

