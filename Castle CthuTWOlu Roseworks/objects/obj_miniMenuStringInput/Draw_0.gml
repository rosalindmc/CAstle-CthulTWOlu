/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(.5)
draw_set_color(c_black)
draw_rectangle(x,y,x+sizeX,y+14,false)
draw_set_alpha(1)
draw_set_color(c_black)
draw_rectangle(x,y,x+sizeX,y+14,true)

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_modMenu)

if editText = true 
{
	drawText(c_black,c_white,x+4,y+2,text)
		
	if caretFlash >= 0
	{
		drawText(c_black,c_white,x+4,y+2,string_copy(text,0,caret)+"|")
	}
	caretFlash--
	if caretFlash <= -caretFlashRate
	{
		caretFlash = caretFlashRate
	}
}
else if point_in_rectangle(mouse_x,mouse_y,x,y,x+sizeX,y+13)
{
	drawText(c_black,c_white,x+4,y+2,text)
}
else
{
	drawText(c_black,c_ltgray,x+4,y+2,text)	
}


file = file_find_first(working_directory+"Mods/*"+"*.ini", 0)

while file != ""
{
	if string(text)+".ini" = filename_name(file)
	{
		draw_set_alpha(abs(1-alpha))
		draw_set_halign(fa_middle)
		drawText(c_black,c_orange,x+(sizeX/2),y+22,"Overwriting an existing file")	
		draw_set_alpha(1)
	}
	file = file_find_next()
}


