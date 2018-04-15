/// @description Insert description here
// You can write your code in this editor

//Check if dragged
if mouse_check_button_pressed(mb_left)
{
    if point_in_circle(mouse_x,mouse_y,x,y,10) or point_in_rectangle(mouse_x,mouse_y,minX,y-5,maxX,y+5)
    {
        dragged = true
    }
}

if mouse_check_button_released(mb_left)
{
    dragged = false
}

if dragged
{
    x = max(min(mouse_x,maxX),minX)
    x = minX+(round((x-minX)/snap)*snap)
    with(host)
    {
        sliderScript(2,num)
    }
}

y = host.y
minX = host.x+xstart
maxX = host.x+xstart+90