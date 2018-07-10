/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black)
draw_rectangle(x-5,y-20,x-25,y,true)
draw_set_alpha(.5)
draw_rectangle(x-5,y-20,x-25,y,false)
draw_set_alpha(1)

draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(fnt_modMenu)

if editText = true
{
	draw_set_halign(fa_left)
	drawText(c_black, c_white, x-20, y-10, value)
	if caretFlash >= 0
	{
		drawText(c_black,c_white,x-20,y-10,string_copy(value,0,caret)+"|")
	}
	caretFlash--
	if caretFlash <= -caretFlashRate
	{
		caretFlash = caretFlashRate
	}	
}
else
{
	drawText(c_black, c_white, x-15, y-10, string_format(time,0,1))
}

draw_set_color(c_white)
draw_rectangle(x,y-5,x+150,y,false)

if animOn = true
{
	draw_set_color(c_green)
	draw_line(x+animPos,y-5,x+animPos,y)
}

draw_set_color(c_black)
draw_rectangle(x,y-5,x+150,y,true)

for(i = 0; i < time; i += .25)
{
	draw_line(x+(i*(150/time)),y-5,x+(i*(150/time)),y-3)
}

for(i = 0; i < time; i += 1)
{
	draw_line(x+(i*(150/time)),y-5,x+(i*(150/time)),y)
}

draw_rectangle(x,y-5,x+150,y,true)