/// @description creates a menu button
/// @param {real} x 
/// @param {real} y 
/// @param {real} menu 
/// @param {real} text
/// @param {real} script
/// @param {real} num

i = instance_create_depth(argument0,argument1,-5,obj_menuButton)
i.menu = argument2
i.text = argument3
i.script = argument4
i.num = argument5
i.x -= 200