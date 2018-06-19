/// @description creates a new field that can be used to modify characteristics
/// @param {real} type
/// @param {real} text
/// @param {real} code
/// @param {real} menu
/// @param {real} submenu


switch(argument0)
{
	case 0:
	i = instance_create_depth(ix,iy,-5,obj_editReal)
	break
	
	case 1:
	i = instance_create_depth(ix,iy,-5,obj_editString)	
	break
	
	case 2:
	i = instance_create_depth(ix,iy,-5,obj_editColour)
	break
	
	case 3:
	i = instance_create_depth(ix,iy,-5,obj_editSelection)
	break
	
	case 4:
	i = instance_create_depth(ix,iy,-5,obj_editAnim)
	break
}
i.text = argument1
i.code = argument2
i.menu = argument3
i.submenu = argument4
i.num = num
i.host = id
i.x = -100

iy += 15
num += 1