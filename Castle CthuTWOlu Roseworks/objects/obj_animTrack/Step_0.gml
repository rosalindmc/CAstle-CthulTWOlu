if host.showMenu = 4
{
	x = host.x+xstart
	y = host.y+ystart	
}
else
{
	x = -200
}

if global.contentSelected = 1
{
	if mouse_check_button_pressed(mb_right)
	{
		if point_in_rectangle(mouse_x,mouse_y,x,y-5,x+150,y+5)
		{
			i = instance_create_depth(mouse_x,y-2,-50, obj_keyframe)
			i.host = id
			i.ix = i.x-x
			
			//Set all of the animations parameters to the middle tween (if between keyframes) or the last keyframe.
			
			updateAnimation()
		}
	}
}

if keyboard_check_pressed(vk_space)
{
	animOn = true
	animPos = 0
}

if animOn = true
{
	animPos += (150/time)/global.frameRate
	
	if animPos >= 150
	{
		animOn = false
	}
}



#region //Input Text
if mouse_check_button_pressed(mb_left) and global.activeMenu = false and global.contentSelected = 1
{
	if point_in_rectangle(mouse_x,mouse_y,x-25,y-20,x-5,y)
	{
		editText = true
		value = ""
		caret = string_length(value)
	}
	else if editText = true
	{
		value = median(0.5,9.9,real(string_format(value,0,pt)))
		updateField(animFld.animDuration,value)
		time = value
		editText = false		
	}
}

//Move Caret
if editText = true and global.activeMenu = false
{
	caretMove = max(0, caretMove - 1)
	if (keyboard_check(vk_left) != keyboard_check(vk_right)) 
	{
	    if (caretMove == 0) 
		{
	        if (keyboard_check(vk_left)) 
			{
	            caret = max(0,caret-1)
				caretFlash = caretFlashRate
	        } 
			else 
			{
				caret = min(string_length(value),caret+1)
				caretFlash = caretFlashRate
	        }
	        caretMove = caretMoveRate
	    }
	} 
	else 
	{
		caretMove = 0
	}
	
	if keyboard_check_pressed(vk_backspace) 
	{
	    value = string_delete(value, caret, 1)
	}
	
	if keyboard_check_pressed(vk_delete) 
	{
	    value = string_delete(value, caret + 1, 1)
	}
	
	if keyboard_check_pressed(vk_enter) 
	{
		value = median(0.5,9.9,real(string_format(value,0,pt)))
		updateField(animFld.animDuration,value)
		time = value
		editText = false
	}
	
	if keyboard_check_pressed(vk_anykey)
	{
		key = -5
		
		if (keyboard_lastkey >= 48 && keyboard_lastkey <= 59)
		{
			key = keyboard_lastkey-48;
		}
		else if (keyboard_lastkey = vk_decimal || keyboard_lastkey = 190)
		{
			key = "."
		}
		
		if key != -5
		{
			value = string_insert(key,value,caret+1)
			caret++
		}
	}
}
caret = median(0, caret, string_length(value))
#endregion