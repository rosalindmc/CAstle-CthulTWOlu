/// @description Insert description here
// You can write your code in this editor

if host.showMenu = 4
{
	x = host.x+xstart
	y = host.y+ystart	
}
else
{
	x = -200
}

if mouse_check_button(mb_middle)
{
	facing = point_direction(x,y,mouse_x,mouse_y)
}