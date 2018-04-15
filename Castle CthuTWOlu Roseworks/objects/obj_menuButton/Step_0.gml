/// @description Insert description here
// You can write your code in this editor

if menu = global.menu
{
	if point_in_rectangle(mouse_x,mouse_y,x-20,y-8,x+100,y+8)
	{
		if mouse_check_button_pressed(mb_left)	
		{
			script_execute(script,num)
		}	
		x += ((xstart+10)-x)/(y/50)
		x = round(x)
	}
	else
	{
		if num = global.submenu and num > 1
		{
			x += ((xstart+10)-x)/(y/50)
			x = round(x)
		}
		else
		{	
			x += (xstart-x)/(y/50)
			x = round(x)
		}
	}
}
else
{
	x += ((xstart-200)-x)/(y/50)
	x = round(x)
}