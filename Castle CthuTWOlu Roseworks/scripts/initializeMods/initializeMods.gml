//Read Mods
if !directory_exists("Mods")
{
	directory_create("Mods")
}

//Create the Menu
iii = instance_create_depth(150,25,10,obj_settingsMenu)
iii.text = "Mod Menu"
iii.menu = 5
iii.submenu = 0
iii.y += 500

//Create a button for all mods
file = file_find_first(working_directory+"Mods/*"+"*.ini", 0)
global.modCount = 0
global.modList[0] = ""
global.modEnabled[0] = false

global.scroll = 0
global.scrollMax = 0
iy = 40

while file != ""
{
	ii = instance_create_depth(ix,iy,5,obj_mod)
	ii.text = filename_name(file)		//Name
	ii.host = iii
	ii.num = -1
	ii.descriptor = ""	//Read Description
	iy += 20
	
	global.modList[global.modCount] = ii
	global.modEnabled[global.modCount] = false
	global.modCount += 1
	file = file_find_next()
}

num = 0

//Sort Mods
ini_open("Settings.ini")
for(i = 0; i < ini_read_real("Mod Order","modCount", 0); i++)
{
	with(obj_mod)
	{
		if text = ini_read_string("Mod Order",string(other.num),"No Mod") 
		{
			num = other.num
			enabled = ini_read_real("Mod Order","e"+string(other.num), false)
			global.modEnabled[num] = enabled
			other.num ++
		}
	}
}
ini_close()

//Sort remaining mods however
with(obj_mod)
{
	if num = -1
	{
		num = other.num
		other.num ++
	}
}