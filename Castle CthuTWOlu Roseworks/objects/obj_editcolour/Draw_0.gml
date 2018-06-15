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

	draw_set_color(value)
	draw_rectangle(x+95,y+2,x+140,y+16,false)
	draw_set_color(c_black)
	draw_rectangle(x+95,y+2,x+140,y+16,true)
}