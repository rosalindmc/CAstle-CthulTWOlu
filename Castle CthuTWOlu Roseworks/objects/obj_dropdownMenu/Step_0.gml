/// @description Insert description here
// You can write your code in this editor


if (global.menu = 0 or mouse_y < 14 or dragged = true) and global.activeMenu = false and (global.mod != -4 or text = "File")
{
	y += (ystart+20-y)/(3)
	y = round(y)
}
else
{
	y += (ystart-y)/(3)
	y = round(y)
}

if mouse_check_button_pressed(mb_left) and global.activeMenu = false
{
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+100,y+14)
	{
		with(obj_dropdownMenu)
		{
			if id != other.id
			{
				dragged = false
			}
		}
		dragged = 1-dragged
	}
}