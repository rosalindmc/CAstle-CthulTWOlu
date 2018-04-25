/// @description Insert description here
// You can write your code in this editor

if showMenu = global.menu and global.menu != 0
{
	x += (xstart-x)/(5)
		
	if abs(xstart-x) < 10
	{
		x = xstart
	}
}
else
{	
	x += (xstart-x+250)/(5)
}
x = round(x)

if x >= room_width+10
{
	showMenu = global.menu
}
