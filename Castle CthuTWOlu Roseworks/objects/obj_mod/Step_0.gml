/// @description Insert description here
// You can write your code in this editor

x = host.x+xstart
y = host.y+adjustY

if dragged = true
{
	adjustY = median(40,mouse_y-host.y,40+(global.modCount*20))
	depth = -5
	
	if !mouse_wheel_down() and !mouse_wheel_up()
	{
		i = 0
		iii = -4
		with(obj_mod)
		{
			num = -1
		}
	
		while(i != global.modCount)
		{
			ii = 1000
			with(obj_mod)
			{
				if y < other.ii and num = -1
				{
					other.ii = y
					other.iii = id
				}
			}
		
			global.modList[i] = iii
			iii.num = i
			i++
		}
	}
}
else
{
	depth = -1
	adjustY += ((50+(num*20))-adjustY)/2
	adjustY = round(adjustY)

	y += (global.scroll*-20)
}

if mouse_check_button_pressed(mb_left)
{
	if point_in_rectangle(mouse_x,mouse_y,x-5,y-8,x+224,y+8)
	{
		with(obj_mod)
		{
			dragged = false
		}	
		dragged = true
	}
	
	if point_in_rectangle(mouse_x,mouse_y,x+225,y-8,x+275,y+8)
	{
		enabled = 1-enabled
		global.modEnabled[num] = enabled 
	}
}

if mouse_check_button_released(mb_left)
{
	dragged = false
}