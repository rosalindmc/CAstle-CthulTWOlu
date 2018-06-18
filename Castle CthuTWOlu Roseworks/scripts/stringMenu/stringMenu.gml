destroyMini()

i = instance_create_depth(room_width/2,(room_height/2)-50,-50,obj_miniMenu)
i.text = "Input Name:"
i.sizeX = linew+40
i.sizeY = (lines*18)+40
global.savedmod = global.mod

ii = instance_create_depth((linew/2)-100,(lines*18)+40,-100,obj_miniMenuButton)
ii.script = updateOther
ii.text = "Submit"
ii.host = i
ii.sizeX = 120
ii.modifier = id
ii.x = i.x+ii.xstart
ii.y = i.y+ii.ystart

ii = instance_create_depth(-(linew/2),30,-100,obj_miniMenuLongString)
ii.sizeX = linew
ii.sizeY = lines*18
ii.text = value
ii.host = i
ii.editor = id
ii.x = i.x+ii.xstart
ii.y = i.y+ii.ystart
