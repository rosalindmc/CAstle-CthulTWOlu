/// @description Insert description here
// You can write your code in this editor

if num >= host.scroll and num < host.scroll+12
{
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_font(fnt_smlMenu)
	
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+120,y+13)
	{
		drawText(c_black,c_white,x+10,y+2,text)
	}
	else
	{
		drawText(c_black,c_gray,x+10,y+2,text)
	}
}