/// @description Insert description here
// You can write your code in this editor

#region //Scroll Bar
if scrollMax > 0
{
	barSize = (height-60)/((scrollMax+1))
	
	if point_in_rectangle(mouse_x,mouse_y,x+190,y+40,x+195,y+height-20) and global.activeMenu = false
	{
		if mouse_check_button_pressed(mb_left)
		{
			dragged = true
		}
	}
	
	if mouse_check_button_released(mb_left)
	{
		dragged = false
	}
	
	if dragged = true
	{
		scroll = median(0,scrollMax,floor((mouse_y-(y+40))/barSize))
	}
}
#endregion

#region //Mousewheel Scroll
if point_in_rectangle(mouse_x,mouse_y,x,y,x+200,y+height)
{
	if mouse_wheel_up()
	{
		scroll = max(scroll-1,0)		
	}
	if mouse_wheel_down()
	{
		scroll = min(scroll+1,scrollMax)
	}
}
#endregion