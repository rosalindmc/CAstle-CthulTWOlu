/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_top)
draw_set_valign(fa_middle)
draw_set_font(font)

draw_self()

if point_in_rectangle(mouse_x,mouse_y,x-20,y-8,x+100,y+8)
{
	drawText(colour1,c_white,x,y,text)
	global.descriptor = descriptor
}
else
{
	drawText(colour1,colour2,x,y,text)
}