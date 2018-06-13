/// @description Insert description here
// You can write your code in this editor

if host.dragged = true
{
	y += ((host.y+(num*14))-y)/(3)
	y = ceil(y)

	if mouse_check_button_pressed(mb_left) and global.activeMenu = false
	{
		if point_in_rectangle(mouse_x,mouse_y,x,host.y+(num*14),x+100,host.y+13+(num*14))
		{
			script_execute(script,modifier)
			
			with(obj_dropdownMenu)
			{
				dragged = false
			}
		}
	}
}
else
{
	y += (host.y-y)/(3)
	y = floor(y)
}