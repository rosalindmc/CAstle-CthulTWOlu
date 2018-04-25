/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

if showMenu = global.menu and global.menu != 0
{
	y += (ystart-y)/(3)
	
	if abs(ystart-y) < 10
	{
		y = ystart
	}
}
else
{	
	y += (ystart-y+300)/(3)
}
y = round(y)

if y >= room_height+10
{
	showMenu = global.menu
}

//Scroll Bar
if scrollMax > 0
{
	barSize = (height-60)/((scrollMax+1))
	
	if point_in_rectangle(mouse_x,mouse_y,x+190,y+40,x+195,y+height-20)
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