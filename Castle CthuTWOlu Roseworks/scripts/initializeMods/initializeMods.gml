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
file = file_find_first(working_directory+"Mods/*", 0)
global.modCount = 0
global.modList[0] = ""
iy = 50

while file != ""
{
	ii = instance_create_depth(ix,iy,5,obj_mod)
	ii.text = filename_name(file)		//Name
	ii.host = iii
	ii.num = global.modCount
	ii.descriptor = ""	//Read Description
	iy += 20
	
	global.modList[global.modCount] = ii
	global.modCount += 1
	file = file_find_next()
}

//Sort Mods


//New Mod Format
/*
ini_open(working_directory+"Mods/"+"MOD 2"+".ini");
ini_write_real("ModDescription", "Text", "This is Mod 1");
ini_close();
*/

