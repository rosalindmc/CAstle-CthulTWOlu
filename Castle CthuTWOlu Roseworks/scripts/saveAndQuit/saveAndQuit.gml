/// @description Changes the current menu settings to the target
/// @param {real} menu 

saveMod()

ini_open("Settings.ini")
ini_write_real("Save Recovery","unexpectedcrash", false)
ini_close()

room_goto(argument0)