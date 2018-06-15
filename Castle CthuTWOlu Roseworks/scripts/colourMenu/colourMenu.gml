destroyMini()

i = instance_create_depth(room_width/2,(room_height/2)-105,-50,obj_miniMenu)
i.text = "Pick a Colour:"
i.sizeX = 244
i.sizeY = 210
global.savedmod = global.mod

ii = instance_create_depth(4,210,-100,obj_miniMenuButton)
ii.script = updateField
ii.text = "Submit"
ii.host = i
ii.sizeX = 120

ii = instance_create_depth(-92,30,-100,obj_miniMenuColours)
ii.text = value
ii.host = i
ii.editor = id
