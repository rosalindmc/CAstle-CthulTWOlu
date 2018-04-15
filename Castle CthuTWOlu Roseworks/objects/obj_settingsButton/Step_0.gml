/// @description Insert description here
// You can write your code in this editor

x = host.x+xstart
y = host.y+ystart

if point_in_rectangle(mouse_x,mouse_y,x-5,y-8,x+200,y+8)
{
	if mouse_check_button_pressed(mb_left)
	{
		buttonScript(2,num)
	}
}