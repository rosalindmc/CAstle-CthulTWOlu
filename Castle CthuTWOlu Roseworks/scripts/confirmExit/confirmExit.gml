if global.mod = -4 or global.savechanges = false
{
	changeRoom(rom_landingMenu)
}
else
{
	i = instance_create_depth(room_width/2,(room_height/2)-50,-50,obj_miniMenu)
	if floor((current_time-global.lastsave)/60000) > 1
	{
		i.text = "There are unsaved changes. \n You have not saved in "+string(floor((current_time-global.lastsave)/60000))+" minutes"
	}
	else
	{
		i.text = "There are unsaved changes. \n You have not saved in "+string(floor((current_time-global.lastsave)/1000))+" seconds"
	}
	i.sizeX = 240
	i.sizeY = 100

	ii = instance_create_depth(-120,100,-100,obj_miniMenuButton)
	ii.script = destroyMini
	ii.text = "Cancel"
	ii.host = i
	ii.sizeX = 80
	ii.x = i.x+ii.xstart
	ii.y = i.y+ii.ystart


	ii = instance_create_depth(-40,100,-100,obj_miniMenuButton)
	ii.script = changeRoom
	ii.text = "Quit"
	ii.modifier = rom_landingMenu
	ii.host = i
	ii.sizeX = 80
	ii.x = i.x+ii.xstart
	ii.y = i.y+ii.ystart

	ii = instance_create_depth(40,100,-100,obj_miniMenuButton)
	ii.script = saveAndQuit
	ii.text = "Save and Quit"
	ii.modifier = rom_landingMenu
	ii.host = i
	ii.sizeX = 80
	ii.x = i.x+ii.xstart
	ii.y = i.y+ii.ystart
}