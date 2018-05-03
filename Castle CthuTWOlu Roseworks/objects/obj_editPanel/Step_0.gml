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

//Update Menu
if y >= room_height+10
{
	showMenu = global.menu
	submenu = 1
	
	scrollMax = 0
	with(obj_editor)
	{
		if menu = other.showMenu and submenu = other.submenu
		{
			other.scrollMax++
		}
	}
	scrollMax = max(0,scrollMax-16)
}
