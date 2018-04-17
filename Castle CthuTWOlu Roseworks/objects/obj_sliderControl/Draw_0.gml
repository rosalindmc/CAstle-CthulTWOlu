/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(fnt_smlMenu)

if bar.dragged = true or point_in_rectangle(mouse_x,mouse_y,x-5,y-8,x+320,y+8)
{
	global.descriptor = descriptor
	drawText(colour1,c_white,x,y,text)
}
else
{
	drawText(colour1,colour2,x,y,text)
}
sliderScript(3,num)


