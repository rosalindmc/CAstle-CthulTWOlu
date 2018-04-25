/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_subMenu)
drawText(c_black,c_gray,x+10,y+10,text)

if minValue = maxValue
{
	drawText(c_black,c_gray,x+150,y+10,minValue)
}
else
{
	drawText(c_black,c_gray,x+150,y+10,string(minValue)+" - "+string(maxValue))	
}