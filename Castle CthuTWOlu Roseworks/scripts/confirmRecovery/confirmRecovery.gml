	global.savedmod = -4

	i = instance_create_depth(room_width/2,(room_height/2)-50,-50,obj_miniMenu)

	i.text = "Program quit unexpectedly. \n Do you wish to recover last autosave of "+string(argument0)+"?"
	i.sizeX = 240
	i.sizeY = 100

	ii = instance_create_depth(-120,100,-100,obj_miniMenuButton)
	ii.script = destroyMini
	ii.text = "Do not Recover"
	ii.host = i
	ii.sizeX = 120

	ii = instance_create_depth(0,100,-100,obj_miniMenuButton)
	ii.script = recoverMod
	ii.text = "Recover"
	ii.modifier = argument0
	ii.host = i
	ii.sizeX = 120
