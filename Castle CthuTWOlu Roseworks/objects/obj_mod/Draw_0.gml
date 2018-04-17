/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(fnt_smlMenu)

if point_in_rectangle(mouse_x,mouse_y,x-5,y-8,x+100,y+8) and (dragged = true or !mouse_check_button(mb_left))
{
	global.descriptor = descriptor
	drawText(colour1,c_white,x,y,text)
}
else
{
	drawText(colour1,colour2,x,y,text)
}

if enabled = 1
{
	t = "Active"
}
else
{
	t = "Disactive"
}

if point_in_rectangle(mouse_x,mouse_y,x+210,y-8,x+280,y+8) = true and dragged = false
{
	drawText(c_gray,c_white,x+220,y,t) 
}
else 
{
	drawText(c_dkgray,c_ltgray,x+220,y,t)
}

