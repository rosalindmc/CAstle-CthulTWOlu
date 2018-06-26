/// @description Insert description here
// You can write your code in this editor

x = host.x+ix

if mouse_check_button_pressed(mb_left)
{
	if point_in_rectangle(mouse_x,mouse_y,x-5,y-10,x+5,y+10)
	{
		if !keyboard_check(vk_shift)
		{
			with(obj_keyframe)
			{
				select = false
				dragged = false
			}
			
			xadj = x-mouse_x
			select = true
			dragged = true
		}
		else
		{
			select = true
			dragged = true
			i = 0			
						
			with(obj_keyframe)
			{
				if select = true
				{
					xadj = x-mouse_x
					num = other.i
					dragged = true
					other.i ++
				}
			}
		}
		
		updateAnimationEditor()
	}
}

if mouse_check_button_released(mb_left)
{
	dragged = false
	updateAnimationEditor()
}