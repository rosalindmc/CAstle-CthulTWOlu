/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_slider,select,x,y)

if select = true
{
	draw_set_halign(fa_middle)
	draw_set_font(fnt_modMenu)
	drawText(c_black,c_white,x,y+10+(15*num),string_format(host.time*((x-host.x)/150),0,2))
}