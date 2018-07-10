/// @description tween animations
/// @param {real} track

if animIndex[argument0] != -4
{
	animDelay[argument0] -= animSpeed[argument0]/global.frameRate

	if animDelay[argument0] <= 0
	{
		animStep[argument0] += sign(animSpeed[argument0])
		
		if animStep[argument0] = animIndex[argument0].animKeyLength
		{
			animKeyframe(animIndex[argument0],animStep[argument0],argument0)
			animReset(argument0)
		}
		else
		{
			animKeyframe(animIndex[argument0],animStep[argument0],argument0)
		}
	}

	//Soft tween hand anims
	handDist[1] += (handDistDest[argument0]-handDist[argument0])/ceil(global.frameRate*animDelay[argument0])
	handDir[1] += (handDirDest[argument0]-handDir[argument0])/ceil(global.frameRate*animDelay[argument0])
	handHeight[1] += (handHeightDest[argument0]-handHeight[argument0])/ceil(global.frameRate*animDelay[argument0])
	itemRot[1] += (itemRotDest[argument0]-itemRot[argument0])/ceil(global.frameRate*animDelay[argument0])
	itemZRot[1] += (itemZRotDest[argument0]-itemZRot[argument0])/ceil(global.frameRate*animDelay[argument0])

	handDist[2] += (handDistDest[argument0]-handDist[argument0])/ceil(global.frameRate*animDelay[argument0])
	handDir[2] += (handDirDest[argument0]-handDir[argument0])/ceil(global.frameRate*animDelay[argument0])
	handHeight[2] += (handHeightDest[argument0]-handHeight[argument0])/ceil(global.frameRate*animDelay[argument0])
	itemRot[2] += (itemRotDest[argument0]-itemRot[argument0])/ceil(global.frameRate*animDelay[argument0])
	itemZRot[2] += (itemZRotDest[argument0]-itemZRot[argument0])/ceil(global.frameRate*animDelay[argument0])

	//Soft tween body anims
	headRot += (headRotDest-headRot)/ceil(global.frameRate*animDelay[argument0])
	hairRot += (hairRotDest-hairRot)/ceil(global.frameRate*animDelay[argument0])
	bodyRot += (bodyRotDest-bodyRot)/ceil(global.frameRate*animDelay[argument0])
	hipsRot += (hipsRotDest-hipsRot)/ceil(global.frameRate*animDelay[argument0])

	//Soft tween leg anims
	legRot[1] += (legRotDest[1]-legRot[1])/ceil(global.frameRate*animDelay[argument0])
	legRot[2] += (legRotDest[2]-legRot[2])/ceil(global.frameRate*animDelay[argument0])
}