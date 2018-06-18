/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black)
draw_rectangle(x,y-20,x-20,y,true)
draw_set_alpha(.5)
draw_rectangle(x,y-20,x-20,y,false)
draw_set_alpha(1)

draw_set_halign(fa_center)
draw_set_valign(fa_center)

drawText(c_black, c_white, x-10, y-10, string_format(time,0,1))

draw_set_color(c_white)
draw_rectangle(x,y-5,x+150,y,false)
draw_set_color(c_black)


for(i = 0; i < time; i += .1)
{
	draw_rectangle(x,y-5,x+(i*(150/time)),y,true)
}

for(i = 0; i < time; i += 1)
{
	draw_rectangle(x,y-5,x+(i*(150/time)),y,true)
	draw_rectangle(x,y-5,x+1+(i*(150/time)),y,true)
	draw_rectangle(x,y-5,x-1+(i*(150/time)),y,true)
}
draw_rectangle(x,y-5,x+150,y,true)