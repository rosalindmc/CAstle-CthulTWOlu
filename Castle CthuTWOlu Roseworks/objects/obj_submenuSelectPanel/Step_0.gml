/// @description Insert description here
// You can write your code in this editor

if menu = host.showMenu
{
	x = host.x+xstart
	y = host.y+ystart
}
else
{
	y = -100
}

if mouse_check_button_pressed(mb_left) and global.activeMenu = false
{
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+size-1,y+14)
	{
		host.submenu = num
		
		with(host)
		{
			scrollMax = 0
			with(obj_editor)
			{
				if menu = other.showMenu and submenu = other.submenu
				{
					other.scrollMax++
				}
			}
			scrollMax = max(0,scrollMax-16)
		}
	}
}