/// @description Insert description here
// You can write your code in this editor

depth = -5-active

if type = host.showMenu
{
	x = host.x+xstart
	y = host.y+ystart+adjustY
	
	y += (host.scroll*-14)
}
else
{
	x = -200
}

if mouse_check_button_pressed(mb_left)
{
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+170,y+14)
	{
		if !keyboard_check(vk_shift)
		{
			with(obj_content)
			{
				active = false
			}
		}
		active = true
	}
}