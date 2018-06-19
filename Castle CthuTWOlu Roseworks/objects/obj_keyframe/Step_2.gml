/// @description Insert description here
// You can write your code in this editor

if select = true and mouse_wheel_down()
{
	xadj *= .95
}

if select = true and mouse_wheel_up()
{
	xadj /= .95
}

if select = true and mouse_check_button(mb_left) and point_in_rectangle(mouse_x,mouse_y,host.x,y-5,host.x+150,y+5)
{
	x = median(mouse_x+xadj,host.x,host.x+150)	
}

if select = true and keyboard_check_pressed(vk_left)
{
	x = max(host.x,x-(1.5/host.time))
}

if select = true and keyboard_check_pressed(vk_right)
{
	x = min(host.x+150,x+(1.5/host.time))
}