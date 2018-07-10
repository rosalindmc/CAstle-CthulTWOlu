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

if global.showMenu = 4
{
	if keyboard_check_pressed(vk_space)
	{
		//Later must update to be relevent to hand
		animStart(global.animSheet,0,1,1)
	}
}