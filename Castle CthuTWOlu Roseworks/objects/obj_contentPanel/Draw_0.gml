/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black)
draw_set_alpha(.25)
draw_rectangle(x,y,x+200,y+height,false)
draw_set_alpha(1)
draw_rectangle(x,y,x+200,y+height,true)

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_subMenu)
drawText(c_black,c_gray,x+10,y+10,text)

if scrollMax > 0
{
	barY = (height-60)*((scroll)/(scrollMax+1))
	barSize = (height-60)/((scrollMax+1))
	
	draw_set_color(c_ltgray)
	draw_rectangle(x+190,y+40+barY,x+195,y+40+barY+barSize,false)
	draw_set_color(c_gray)
	draw_rectangle(x+190,y+40,x+195,y+height-20,true)
}

if point_in_rectangle(mouse_x,mouse_y,x+5,y+height-15,x+15,y+height-5)
{
	draw_sprite(editicon_newButton,1,x+10,y+height-10)
}
else
{
	draw_sprite(editicon_newButton,0,x+10,y+height-10)
}

if point_in_rectangle(mouse_x,mouse_y,x+20,y+height-15,x+30,y+height-5)
{
	draw_sprite(editicon_cloneButton,1,x+25,y+height-10)
}
else
{
	draw_sprite(editicon_cloneButton,0,x+25,y+height-10)
}

if point_in_rectangle(mouse_x,mouse_y,x+35,y+height-15,x+45,y+height-5)
{
	draw_sprite(editicon_deleteButton,1,x+40,y+height-10)
}
else
{
	draw_sprite(editicon_deleteButton,0,x+40,y+height-10)
}