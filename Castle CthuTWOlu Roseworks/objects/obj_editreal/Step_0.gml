/// @description Insert description here
// You can write your code in this editor

if menu = host.showMenu and submenu = host.submenu
{
	x = host.x+xstart
	y = host.y+ystart+(-15*host.scroll)
}
else
{
	y = -1000
}

#region //Input Text
if mouse_check_button_pressed(mb_left)
{
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+170,y+13)
	{
		editText = true
		value = ""
		caret = string_length(value)
	}
	else
	{
		editText = false		
	}
}

//Move Caret
if editText = true
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
		value = real(string_format(value,0,pt))
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
		else if (keyboard_lastkey = vk_subtract || keyboard_lastkey = 189)
		{
			key = "-"
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