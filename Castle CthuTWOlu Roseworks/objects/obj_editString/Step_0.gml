/// @description Insert description here
// You can write your code in this editor

if menu = host.showMenu and submenu = host.submenu
{
	x = host.x+xstart
	y = host.y+ystart+(-15*host.scroll)
}
else
{
	y = -1000
}

if mouse_check_button_pressed(mb_left) and global.activeMenu = false
{
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+120,y+13)
	{
		//Create Menu to Update Text
		stringMenu()
	}
}
