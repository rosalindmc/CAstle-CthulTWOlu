/// @description Insert description here
// You can write your code in this editor

//Draw static GUI elements

draw_sprite(sprite_index,0,x,y)
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_menu)
drawText(c_black,c_ltgray,x,y+22,text)

draw_set_halign(fa_right)
draw_set_font(fnt_smlMenu)

if global.mod != -4
{
	drawText(c_black,c_ltgray,room_width,0,global.mod)
}
else
{
	drawText(c_black,c_ltgray,room_width,0,"No Mod Loaded")
}
