/// @description tween animations
/// @param {real} track

//animEndStep()
if argument0 != 0
{
    //Soft tween hand anims
    handDist[argument0] += (handDistDest[argument0]-handDist[argument0])/ceil(global.frameRate*animDelay[argument0])
    handDir[argument0] += (handDirDest[argument0]-handDir[argument0])/ceil(global.frameRate*animDelay[argument0])
    handHeight[argument0] += (handHeightDest[argument0]-handHeight[argument0])/ceil(global.frameRate*animDelay[argument0])
    itemRot[argument0] += (itemRotDest[argument0]-itemRot[argument0])/ceil(global.frameRate*animDelay[argument0])
    itemZRot[argument0] += (itemZRotDest[argument0]-itemZRot[argument0])/ceil(global.frameRate*animDelay[argument0])
}
else
{
	//Soft tween leg anims
}

animDelay[argument0] -= animSpeed[argument0]/global.frameRate

if animDelay[argument0] <= 0
{
    animStep[argument0] += sign(animSpeed[argument0])    
    
	//script_execute(animIndex[argument0],animStep[argument0],argument0)
	animKeyframe(animIndex[argument0],animStep[argument0],argument0)
}


