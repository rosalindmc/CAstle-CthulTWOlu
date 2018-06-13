/// @description Insert description here
// You can write your code in this editor

x = host.x+xstart
y = host.y+ystart

alpha += .05
if alpha >= 2
{
	alpha -= 2
}

#region //Input Text
if mouse_check_button_pressed(mb_right)
{
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+sizeX,y+sizeY)
	{
		editText = true
		caret = string_length(text)
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
				caret = min(string_length(text),caret+1)
				caretFlash = caretFlashRate
	        }
	        caretMove = caretMoveRate
	    }
	}
	else if keyboard_check(vk_up)
	{
		caret = 0
	}
	else if keyboard_check(vk_down)
	{
		caret = string_length(text)
	}
	else if keyboard_check(vk_backspace) 
	{
		if (caretMove == 0) 
		{
			text = string_delete(text, caret, 1)
			caret = max(0,caret-1)
			caretMove = caretMoveRate
		}
	}
	else if keyboard_check(vk_delete) 
	{
		if (caretMove == 0) 
		{
			text = string_delete(text, caret + 1, 1)
			caretMove = caretMoveRate
		}
	}
	else 
	{
		caretMove = 0
	}
	
	if keyboard_check_pressed(vk_enter) 
	{
	    text = string_insert("
",text,caret+1)
		caret = min(string_length(text),caret+2)
	}

	if keyboard_check_pressed(vk_anykey)
	{
		key = -5
		
		if (keyboard_lastkey >= 48 && keyboard_lastkey <= 59)
		{
			if keyboard_check(vk_shift)
			{
				switch(keyboard_lastkey)
				{
					case 48: key = ")" break
					case 49: key = "!" break
					case 50: key = "@" break
					case 51: key = "#" break
					case 52: key = "$" break
					case 53: key = "%" break				
					case 54: key = "^" break
					case 55: key = "&" break
					case 56: key = "*" break
					case 57: key = "(" break
				}
			}
			else
			{
				key = keyboard_lastkey-48;
			}
		}
		else if (keyboard_lastkey >= 65 && keyboard_lastkey <= 90)
		{
			key = chr(keyboard_lastkey);
		}
		else
		{
			switch(keyboard_lastkey)
			{
				case 32: key = " " break
				case 188: key = "," break
				case 190: key = "." break
				case 191: key = "?" break
			}
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
	
	editor.value = text
}
caret = median(0, caret, string_length(text))
