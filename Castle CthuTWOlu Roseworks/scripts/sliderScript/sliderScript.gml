/// @description script for handling slider modifications 
/// @param {real} howToUse
/// @param {real} slider

switch(argument0)
{
case 1:     //Initialize
    switch(argument1)
    {
    case 0: bar.x = (bar.x+host.x+xstart)+global.effectVolume*90 bar.snap = 9 sections = 10 break
    case 1: bar.x = (bar.x+host.x+xstart)+global.masterVolume*90 bar.snap = 9 sections = 10 break
    case 2: bar.x = (bar.x+host.x+xstart)+global.musicVolume*90 bar.snap = 9 sections = 10 break
    case 3: bar.x = (bar.x+host.x+xstart)+global.ambienceVolume*90 bar.snap = 9 sections = 10 break
    case 4: bar.x = (bar.x+host.x+xstart)+(global.frameRate-15)*2 bar.snap = 10 sections = 9 break
	case 5: bar.x = (bar.x+host.x+xstart)+(global.perfectAssist-1)*90 bar.snap = 9 sections = 10 break
    case 6: bar.x = (bar.x+host.x+xstart)+(global.dodgeAssist-1)*90 bar.snap = 9 sections = 10 break
    case 7: bar.x = (bar.x+host.x+xstart)+(global.lightAssist-1)*90 bar.snap = 9 sections = 10 break
	case 8: bar.x = (bar.x+host.x+xstart)+((global.effectDensity-.25)/.75)*90 bar.snap = 30 sections = 3 break
    }
break

case 2:     //Update
    switch(argument1)
    {
    case 0: global.effectVolume = (bar.x-bar.minX)/90 break
    case 1: global.masterVolume = (bar.x-bar.minX)/90 break
    case 2: global.musicVolume = (bar.x-bar.minX)/90 break
    case 3: global.ambienceVolume = (bar.x-bar.minX)/90 break
    case 4: global.frameRate = 15+((bar.x-bar.minX)/2) break
	case 5: global.perfectAssist = 1+(bar.x-bar.minX)/90 break
    case 6: global.dodgeAssist = 1+(bar.x-bar.minX)/90 break
    case 7: global.lightAssist = 1+(bar.x-bar.minX)/90 break
	case 8: global.effectDensity = .25+((bar.x-bar.minX)*.75)/90 break
    }
break

case 3:     //Draw
    switch(argument1)
    {
    case 0: if global.effectVolume = 0 drawText(c_gray,c_white,x+220,y,"Muted")
    else drawText(c_gray,c_white,x+220,y,string(round(100*global.effectVolume))+"%") break
    case 1: if global.masterVolume = 0 drawText(c_gray,c_white,x+220,y,"Muted")
    else drawText(c_gray,c_white,x+220,y,string(round(100*global.masterVolume))+"%") break
    case 2: if global.musicVolume = 0 drawText(c_gray,c_white,x+220,y,"Muted")
    else drawText(c_gray,c_white,x+220,y,string(round(100*global.musicVolume))+"%") break
    case 3: if global.ambienceVolume = 0 drawText(c_gray,c_white,x+220,y,"Muted")
    else drawText(c_gray,c_white,x+220,y,string(round(100*global.ambienceVolume))+"%") break
    
    case 4: drawText(c_gray,c_white,x+220,y,string(global.frameRate)+" FPS") break
	
	case 5: if global.perfectAssist = 1 drawText(c_gray,c_white,x+220,y,"Standard")
    else drawText(c_gray,c_white,x+220,y,"x "+string_format(global.perfectAssist,2,1)) break
    case 6: if global.dodgeAssist = 1 drawText(c_gray,c_white,x+220,y,"Standard")
    else drawText(c_gray,c_white,x+220,y,"x "+string_format(global.dodgeAssist,2,1)) break
    case 7: if global.lightAssist = 1 drawText(c_gray,c_white,x+220,y,"Standard")
    else drawText(c_gray,c_white,x+220,y,"x "+string_format(global.lightAssist,2,1)) break
	case 8: if global.effectDensity = 1 drawText(c_gray,c_white,x+220,y,"Standard")
    else drawText(c_gray,c_white,x+220,y,string(round(100*global.effectDensity))+"%") break
    }
break
}