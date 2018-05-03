/// @description Insert description here
// You can write your code in this editor

if num >= host.scroll and num < host.scroll+16
{
	draw_set_color(c_dkgray)
	draw_rectangle(x,y,x+170,y+14,false)
	draw_set_color(c_black)
	if active = true
	{
		draw_set_color(c_white)
	}
	draw_rectangle(x,y,x+170,y+14,true)

	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_font(fnt_modMenu)

	if editText = true 
	{
		drawText(c_black,c_white,x+16,y+2,text)
		
		if caretFlash >= 0
		{
			drawText(c_black,c_white,x+16,y+2,string_copy(text,0,caret)+"|")
		}
		caretFlash--
		if caretFlash <= -caretFlashRate
		{
			caretFlash = caretFlashRate
		}
	}
	else if point_in_rectangle(mouse_x,mouse_y,x,y,x+170,y+13)
	{
		drawText(c_black,c_white,x+16,y+2,text)
	}
	else
	{
		drawText(c_black,c_ltgray,x+16,y+2,text)	
	}
	draw_sprite(icon,1,x+7,y+7)	
}