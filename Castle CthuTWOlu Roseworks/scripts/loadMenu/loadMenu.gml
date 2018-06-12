global.savedmod = global.mod
destroyMini()
global.activeMenu = true

//Mini Menu
i = instance_create_depth(room_width/2,(room_height/2)-150,-50,obj_miniMenu)
i.text = "Load Mod"
i.sizeX = 260
i.sizeY = 300

//Read Mods
if !directory_exists("Mods")
{
	directory_create("Mods")
}

//Create a button for all mods
file = file_find_first(working_directory+"Mods/*"+"*.ini", 0)

ix = -120
iy = 30
nm = 0

while file != ""
{
	ii = instance_create_depth(ix,iy,-100,obj_miniMenuOptions)
	ii.text = filename_name(file)
	ii.script = loadMod
	ii.modifier = filename_name(file)
	ii.host = i
	ii.num = nm
	iy += 20
	nm += 1
	
	file = file_find_next()
}

i.scrollMax = max(0,nm-12)

ii = instance_create_depth(50,286,-100,obj_miniMenuButton)
ii.script = destroyMini
ii.text = "Cancel"
ii.host = i
ii.sizeX = 80


