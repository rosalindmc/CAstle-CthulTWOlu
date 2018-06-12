destroyMini()

i = instance_create_depth(room_width/2,(room_height/2)-50,-50,obj_miniMenu)
i.text = "Input Name:"
i.sizeX = 240
i.sizeY = 100
global.savedmod = global.mod

ii = instance_create_depth(0,100,-100,obj_miniMenuButton)
ii.script = updateField
ii.text = "Submit"
ii.host = i
ii.sizeX = 120

ii = instance_create_depth(-100,30,-100,obj_miniMenuLongString)
ii.sizeX = 200
ii.sizeY = 60
ii.text = value
ii.host = i
ii.editor = id
