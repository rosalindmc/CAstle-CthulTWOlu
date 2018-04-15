//Read Mods
if !directory_exists(working_directory + "\Mods\ ")
{
	directory_create("Mods")
}

file = file_find_first("\Mods\*.ini", fa_readonly)

iii = instance_create_depth(150,25,10,obj_settingsMenu)
iii.text = working_directory
iii.menu = 5
iii.submenu = 0
iii.y += 500

global.modCount = 0
global.modList[0] = ""

while file != ""
{
	ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
	ii.text = file		//Name
	ii.host = iii
	ii.num = 0
	ii.descriptor = ""	//Read Description
	iy += 20
	
	global.modList[global.modCount] = file
	global.modCount += 1
	file = file_find_next()
}

