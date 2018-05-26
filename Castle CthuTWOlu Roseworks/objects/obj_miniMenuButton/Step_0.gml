/// @description Insert description here
// You can write your code in this editor

x = host.x+xstart
y = host.y+ystart

if mouse_check_button_pressed(mb_left)
{
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+sizeX-1,y+13)
	{
		script_execute(script,modifier)
	}
}