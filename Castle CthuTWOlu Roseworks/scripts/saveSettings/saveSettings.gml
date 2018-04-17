/// @description Save all your settings
//Run whenever you exit a settings screen

//Open the ini file for writing
ini_open("Settings.ini")

//Sound Settings
ini_write_real("Sound","ambienceVolume", global.ambienceVolume)
ini_write_real("Sound","effectVolume", global.effectVolume)
ini_write_real("Sound","musicVolume", global.musicVolume)
ini_write_real("Sound","masterVolume", global.masterVolume)

//Movement Keybindings
ini_write_real("Controls","up", global.upKey)
ini_write_real("Controls","down", global.downKey)
ini_write_real("Controls","left", global.leftKey)
ini_write_real("Controls","right", global.rightKey)
ini_write_real("Controls","inventory", global.inventoryKey)
ini_write_real("Controls","defend", global.defendKey)
ini_write_real("Controls","sneak", global.sneakKey)

//Item Keybindings
ini_write_real("Controls","item1", global.spellKey[1])
ini_write_real("Controls","item2", global.spellKey[2])
ini_write_real("Controls","item3", global.spellKey[3])
ini_write_real("Controls","item4", global.spellKey[4])
ini_write_real("Controls","item5", global.spellKey[5])

//Other Keybindings
ini_write_real("Controls","reload", global.reloadKey)
ini_write_real("Controls","interact", global.interactKey)
ini_write_real("Controls","throw", global.throwKey)
ini_write_real("Controls","empty", global.emptyKey)

//Gameplay
ini_write_real("Gameplay","dodgeAssist", global.dodgeAssist)
ini_write_real("Gameplay","perfectAssist", global.perfectAssist)
ini_write_real("Gameplay","lightAssist", global.lightAssist)

//Visuals
ini_write_real("Visuals","fps", global.frameRate)
ini_write_real("Visuals","effects", global.effectDensity)
ini_write_real("Visuals","reflections", global.reflections)

//Mod Order
ini_write_real("Mod Order","modCount", global.modCount)
for(i = 0; i < global.modCount; i++)
{
	ini_write_string("Mod Order",string(i), string(global.modList[i].text))
	ini_write_real("Mod Order","e"+string(i), global.modEnabled[i])
}

//Close the ini file
ini_close()