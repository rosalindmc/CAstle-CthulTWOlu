/// @description Insert description here
// You can write your code in this editor

//Total Bar
draw_set_color(c_white)
draw_rectangle(minX,y-3,x,y+3,false)
draw_set_color(c_dkgray)
draw_rectangle(x,y-3,maxX,y+3,false)

//Bars
draw_set_color(c_black)
ix = 0
repeat(host.sections)
{
    draw_rectangle(minX+ix,y-3,minX+ix+(90/host.sections),y+3,true)
    ix += (90/host.sections)
}


draw_self()