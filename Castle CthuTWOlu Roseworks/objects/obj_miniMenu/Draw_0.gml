/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_dkgray)
draw_rectangle(x-(sizeX/2),y,x+(sizeX/2),y+sizeY,false)
draw_set_color(c_black)
draw_rectangle(x-(sizeX/2),y,x+(sizeX/2),y+sizeY,true)

if point_in_rectangle(mouse_x,mouse_y,x+(sizeX/2)-10,y,x+(sizeX/2),y+10)
{
	draw_sprite(editicon_deleteButton,1,x+(sizeX/2)-4,y+5)
}
else
{
	draw_sprite(editicon_deleteButton,0,x+(sizeX/2)-4,y+5)	
}

draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_set_font(fnt_modMenu)
drawText(c_black,c_ltgray,x,y+10,text)

if scrollMax > 0
{
	barY = (sizeY-60)*((scroll)/(scrollMax+1))
	barSize = (sizeY-60)/((scrollMax+1))
	
	draw_set_color(c_ltgray)
	draw_rectangle(x+(sizeX/2)-10,y+40+barY,x+(sizeX/2)-5,y+40+barY+barSize,false)
	draw_set_color(c_gray)
	draw_rectangle(x+(sizeX/2)-10,y+40,x+(sizeX/2)-5,y+sizeY-20,true)
}