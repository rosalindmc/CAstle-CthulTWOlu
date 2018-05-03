/// @description creates a new field that can be used to modify characteristics
/// @param {real} submenu
/// @param {real} menu
/// @param {real} size
/// @param {real} text

i = instance_create_depth(ix,iy,-10,obj_submenuSelectPanel)
i.num = argument0
i.menu = argument1
i.size = argument2
i.text = argument3
i.host = id

ix += argument2