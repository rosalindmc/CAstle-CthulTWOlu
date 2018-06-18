/// @description Changes the current menu settings to the target
/// @param {real} menu 

global.menu = argument0
global.submenu = 0
global.contentSelected = 0

if room = rom_landingMenu
{
	if (global.menu = 3 or global.menu = 5)
	{
		saveSettings()
	}

	global.scroll = 0

	if global.menu = 5
	{
		global.scrollMax = max(0,global.modCount-12)
	}
	else
	{
		global.scrollMax = 0
	}
}