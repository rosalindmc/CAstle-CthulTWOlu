/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_pressed(mb_left)
{
	if point_in_rectangle(mouse_x,mouse_y,x-5,y-10,x+5,y+10)
	{
		if !keyboard_check(vk_shift)
		{
			with(obj_keyframe)
			{
				select = false
			}
			
			xadj = mouse_x-x
			select = true
		}
		else
		{
			select = true
			i = 0			
						
			with(obj_keyframe)
			{
				if select = true
				{
					xadj = x-mouse_x
					num = other.i
					other.i ++
				}
			}
		}
	}
}
