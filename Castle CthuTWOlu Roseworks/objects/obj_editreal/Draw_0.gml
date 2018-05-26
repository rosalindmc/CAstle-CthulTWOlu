/// @description Insert description here
// You can write your code in this editor


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
		drawText(c_black,c_white,x+100,y+2,value)
		
		if caretFlash >= 0
		{
			drawText(c_black,c_white,x+100,y+2,string_copy(value,0,caret)+"|")
		}
		caretFlash--
		if caretFlash <= -caretFlashRate
		{
			caretFlash = caretFlashRate
		}
	}
	else
	{
		drawText(c_black,c_white,x+100,y+2,string_format(value,0,pt))
	}
}

/*
if minValue = maxValue
{
	drawText(c_black,c_gray,x+150,y+10,minValue)
}
else
{
	drawText(c_black,c_gray,x+150,y+10,string(minValue)+" - "+string(maxValue))	
}