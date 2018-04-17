/// @description Insert description here
// You can write your code in this editor

if global.descriptor = global.showDescriptor and global.descriptor != ""
{
	y += (room_height-20-y)/(5)
}
else
{	
	y += (room_height+20-y)/(5)
}
y = round(y)

if y >= room_height+5
{
	global.showDescriptor = global.descriptor	
}
global.descriptor = ""

//Mouse Wheel
if mouse_wheel_down()
{
	global.scroll = min(global.scroll+1,global.scrollMax)
}
if mouse_wheel_up()
{
	global.scroll = max(global.scroll-1,0)
}