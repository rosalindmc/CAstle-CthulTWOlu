/// @description Insert description here
// You can write your code in this editor

depth = -5-active

if type = host.showMenu
{
	x = host.x+xstart
	y = host.y+ystart+adjustY
	
	y += (host.scroll*-14)
}
else
{
	x = -200
}

if mouse_check_button_pressed(mb_left) and global.activeMenu = false
{
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+170,y+13)
	{
		if !keyboard_check(vk_shift) or global.activeMenu = 4
		{
			with(obj_content)
			{
				active = false
			}
		}
		active = 1-active
		updateEditor()
	}
}

#region //Input Text
if mouse_check_button_pressed(mb_right) and global.activeMenu = false
{
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+170,y+13)
	{
		editText = true
		caret = string_length(text)
	}
	else
	{
		editText = false		
		enforceUniqueName()
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
				caret = min(string_length(text),caret+1)
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
	    text = string_delete(text, caret, 1)
		caret = max(0,caret-1)
	}
	if keyboard_check_pressed(vk_delete) 
	{
	    text = string_delete(text, caret + 1, 1)
	}
	if keyboard_check_pressed(vk_enter) 
	{
		editText = false		
		enforceUniqueName()
	}
	
	if keyboard_check_pressed(vk_anykey)
	{
		key = -5
		
		if (keyboard_lastkey >= 48 && keyboard_lastkey <= 59)
		{
		  key = keyboard_lastkey-48;
		}
		else if (keyboard_lastkey >= 65 && keyboard_lastkey <= 90)
		{
		  key = chr(keyboard_lastkey);
		}
		
		if key != -5
		{
			if keyboard_check(vk_shift)
			{
				key = string_upper(key)
			}
			else
			{
				key = string_lower(key)			
			}

			text = string_insert(key,text,caret+1)
			caret++
		}
	}
}
caret = median(0, caret, string_length(text))
#endregion