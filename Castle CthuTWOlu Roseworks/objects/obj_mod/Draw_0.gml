/// @description Insert description here
// You can write your code in this editor

if num >= global.scroll and num < global.scroll+12
{
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_smlMenu)

	if enabled = 1
	{
		t = "Active"
		colour2 = c_ltgray
	}
	else
	{
		t = "Inactive"
		colour2 = c_gray
	}
	
	if point_in_rectangle(mouse_x,mouse_y,x-5,y-8,x+224,y+8) and (dragged = true or !mouse_check_button(mb_left))
	{
		global.descriptor = descriptor
		drawText(colour1,c_white,x,y,text)
	}
	else
	{
		drawText(colour1,colour2,x,y,text)
	}

	draw_set_halign(fa_middle)
	if point_in_rectangle(mouse_x,mouse_y,x+225,y-8,x+275,y+8) = true and dragged = false
	{
		drawText(colour1,c_white,x+250,y,t) 
	}
	else 
	{
		drawText(colour1,colour2,x+250,y,t)
	}
}
