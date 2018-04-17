/// @description Insert description here
// You can write your code in this editor

//Scroll Bar
if global.scrollMax > 0
{
	barSize = (height-60)/((global.scrollMax+1))
	
	if point_in_rectangle(mouse_x,mouse_y,x+330,y+40,x+335,y+height-20)
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
		global.scroll = median(0,global.scrollMax,floor((mouse_y-(y+40))/barSize))
	}
}