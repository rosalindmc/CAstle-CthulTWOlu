/// @description Insert description here
// You can write your code in this editor

if global.contentSelected > 0
{
	if num >= host.scroll and num < host.scroll+16
	{
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		draw_set_font(fnt_modMenu)
	
		if point_in_rectangle(mouse_x,mouse_y,x,y,x+120,y+13) and global.activeMenu = false
		{
			drawText(c_black,c_white,x+10,y+2,text)
		}
		else
		{
			drawText(c_black,c_gray,x+10,y+2,text)
		}


		if editText = true 
		{	
			drawText(c_black,c_white,x+120,y+2,value)
		
			if caretFlash >= 0
			{
				drawText(c_black,c_white,x+120,y+2,string_copy(value,0,caret)+"|")
			}
			caretFlash--
			if caretFlash <= -caretFlashRate
			{
				caretFlash = caretFlashRate
			}
		}
		else if minValue = maxValue
		{
			drawText(c_black,c_white,x+120,y+2,string_format(value,0,pt))
		}
		else
		{
			drawText(c_black,c_white,x+120,y+2,string_format(minValue,0,pt)+" - "+string_format(maxValue,0,pt))
		}
	}
}
