/// @description script for handling button use 
/// @param {real} howToUse
/// @param {real} button

switch(argument0)
{
case 2:     //Click
    switch(argument1)
    {
    case 0: global.reflections = 1-global.reflections break
    }
break

case 3:     //Draw
    switch(argument1)
    {
    case 0: if global.reflections = 0 drawText(c_dkgray,c_ltgray,x+245,y,"Disabled")
    else drawText(c_gray,c_white,x+245,y,"Enabled") break
    }
break
}