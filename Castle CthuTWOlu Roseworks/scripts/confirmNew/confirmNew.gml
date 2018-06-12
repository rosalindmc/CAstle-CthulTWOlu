if global.mod = -4 or global.savechanges = false
{
	newMenu()
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
	ii.script = newMenu
	ii.text = "Discard Changes"
	ii.host = i
	ii.sizeX = 120

	ii = instance_create_depth(0,100,-100,obj_miniMenuButton)
	ii.script = newMenuSave
	ii.text = "Save"
	ii.modifier = rom_landingMenu
	ii.host = i
	ii.sizeX = 120
}
