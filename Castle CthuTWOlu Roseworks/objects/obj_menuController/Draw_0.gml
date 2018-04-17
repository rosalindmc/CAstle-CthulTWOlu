/// @description Insert description here

draw_set_halign(fa_middle)
draw_set_valign(fa_middle)
draw_set_font(fnt_descriptor)

drawText(c_black,c_gray,x,y,global.showDescriptor)

//Cursor
draw_sprite(spr_cursor,0,round(mouse_x),round(mouse_y))