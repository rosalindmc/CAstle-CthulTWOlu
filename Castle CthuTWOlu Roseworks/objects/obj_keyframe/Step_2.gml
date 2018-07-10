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

if dragged = true and mouse_check_button(mb_left)
{
	ix = median(mouse_x+xadj,host.x,host.x+150)-host.x	
}

if select = true and keyboard_check_pressed(vk_left)
{
	ix = max(host.x,x-(1.5/host.time))-host.x
}

if select = true and keyboard_check_pressed(vk_down)
{
	ix = max(host.x,x-(15/host.time))-host.x
}

if select = true and keyboard_check_pressed(vk_right)
{
	ix = min(host.x+150,x+(1.5/host.time))-host.x
}

if select = true and keyboard_check_pressed(vk_up)
{
	ix = min(host.x+150,x+(15/host.time))-host.x
}

with(obj_keyframe)
{
	if ix-other.ix >= -3
	{
		ix = median(0,ix-1,150)
	}
	if ix-other.ix <= 3
	{
		ix = median(0,ix+1,150)
	}
}