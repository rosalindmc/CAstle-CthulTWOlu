/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_pressed(mb_left)
{
	if point_in_rectangle(mouse_x,mouse_y,x+(sizeX/2)-10,y,x+(sizeX/2),y+10)
	{
		destroyMini()
	}
}