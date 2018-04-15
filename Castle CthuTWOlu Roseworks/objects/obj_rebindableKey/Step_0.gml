/// @description Insert description here
// You can write your code in this editor

x = xstart+host.x
y = ystart+host.y

if point_in_rectangle(mouse_x,mouse_y,x-5,y-8,x+150,y+8) and mouse_check_button_pressed(mb_left)
{
	with(obj_rebindableKey)
	{
	    rebind = false
	}
	rebind = true
}

if rebind = true
{
    if keyboard_check_pressed(vk_anykey)
    {
        if keyCode(keyboard_lastkey) != ""
        {
            key = keyboard_lastkey
            rebind = false
            keyRebindButton(num,false)
        }
    }
}