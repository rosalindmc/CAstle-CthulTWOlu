/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black)
draw_set_alpha(.75)
draw_rectangle(x,y,x+340,y+height,false)
draw_set_alpha(1)
draw_rectangle(x,y,x+340,y+height,true)

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_subMenu)
drawText(c_black,c_gray,x+10,y+10,text)

if global.scrollMax > 0
{
	barY = (height-60)*((global.scroll)/(global.scrollMax+1))
	barSize = (height-60)/((global.scrollMax+1))
	
	draw_set_color(c_ltgray)
	draw_rectangle(x+330,y+40+barY,x+335,y+40+barY+barSize,false)
	draw_set_color(c_gray)
	draw_rectangle(x+330,y+40,x+335,y+height-20,true)
}