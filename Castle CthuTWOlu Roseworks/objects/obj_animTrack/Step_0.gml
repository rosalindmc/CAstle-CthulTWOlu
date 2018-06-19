if host.showMenu = 4
{
	x = host.x+xstart
	y = host.y+ystart	
}
else
{
	x = -200
}

if mouse_check_button_pressed(mb_right)
{
	if point_in_rectangle(mouse_x,mouse_y,x,y-5,x+150,y+5)
	{
		i = instance_create_depth(mouse_x,y-2,-50, obj_keyframe)
		i.host = id
	}
}