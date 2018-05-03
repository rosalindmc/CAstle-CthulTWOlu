/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_dkgray)
draw_rectangle(x,y,x+size,y+14,false)
draw_set_color(c_black)
draw_rectangle(x,y,x+size,y+14,true)

draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_modMenu)
if point_in_rectangle(mouse_x,mouse_y,x,y,x+size,y+13)
{
	drawText(c_black,c_white,x+(size/2)-1,y+2,text)
}
else
{
	drawText(c_black,c_ltgray,x+(size/2)-1,y+2,text)	
}
