i = instance_create_depth(room_width/2,(room_height/2)-50,-50,obj_miniMenu)
i.text = "Unsaved Changes will be lost"
i.sizeX = 240
i.sizeY = 100

ii = instance_create_depth(-120,100,-100,obj_miniMenuButton)
ii.script = destroyMini
ii.text = "Cancel"
ii.host = i
ii.sizeX = 80

ii = instance_create_depth(-40,100,-100,obj_miniMenuButton)
ii.script = changeRoom
ii.text = "Quit"
ii.modifier = rom_landingMenu
ii.host = i
ii.sizeX = 80

ii = instance_create_depth(40,100,-100,obj_miniMenuButton)
ii.script = saveAndQuit
ii.text = "Save and Quit"
ii.modifier = rom_landingMenu
ii.host = i
ii.sizeX = 80
