/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(.5)
draw_set_color(c_black)
draw_rectangle(x,y,x+sizeX,y+sizeY,false)
draw_set_alpha(1)
draw_set_color(c_black)
draw_rectangle(x,y,x+sizeX,y+sizeY,true)

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_modMenu)

drawTextExt(c_black,c_white,x+4,y+2,text,sizeX-8)
		
if caretFlash >= 0
{
	drawTextExt(c_black,c_white,x+4,y+2,string_copy(text,0,caret)+"|",sizeX-8)
}
caretFlash--
if caretFlash <= -caretFlashRate
{
	caretFlash = caretFlashRate
}