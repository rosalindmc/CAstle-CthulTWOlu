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

if y >= room_height+10
{
	global.showDescriptor = global.descriptor		
}