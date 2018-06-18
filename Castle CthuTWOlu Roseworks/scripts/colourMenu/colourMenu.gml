destroyMini()

i = instance_create_depth(room_width/2,(room_height/2)-105,-50,obj_miniMenu)
i.text = "Pick a Colour:"
i.sizeX = 244
i.sizeY = 210
global.savedmod = global.mod

ii = instance_create_depth(4,210,-100,obj_miniMenuButton)
ii.script = updateOther
ii.text = "Submit"
ii.host = i
ii.sizeX = 120
ii.modifier = id
ii.x = i.x+ii.xstart
ii.y = i.y+ii.ystart

ii = instance_create_depth(-92,30,-100,obj_miniMenuColours)
ii.colour = value
ii.h = color_get_hue(value)
ii.s = color_get_saturation(value)
ii.v = color_get_value(value)
ii.r = color_get_red(value)
ii.g = color_get_green(value)
ii.b = color_get_blue(value)
ii.x = i.x+ii.xstart
ii.y = i.y+ii.ystart
ii.host = i
ii.editor = id
