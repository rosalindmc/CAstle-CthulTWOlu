/// @description Changes the room
/// @param {real} room 

if room = rom_roseworks
{
	ini_open("Settings.ini")
	ini_write_real("Save Recovery","unexpectedcrash", false)
	ini_close()
}

room_goto(argument0)