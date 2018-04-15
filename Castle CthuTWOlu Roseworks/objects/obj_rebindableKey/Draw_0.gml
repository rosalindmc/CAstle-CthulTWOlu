/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(fnt_smlMenu)

if rebind = false
{
    keyText = keyCode(key)
}
else
{
    keyText = "Press any Key"
}

if point_in_rectangle(mouse_x,mouse_y,x-5,y-8,x+150,y+8)
{
	global.descriptor = descriptor
    drawText(colour1,c_white,x,y,text)
	draw_set_halign(fa_middle)
    drawText(colour1,c_white,x+100,y,keyText)
}
else
{
    drawText(colour1,colour2,x,y,text)
	draw_set_halign(fa_middle)
    drawText(colour1,colour2,x+100,y,keyText)
}