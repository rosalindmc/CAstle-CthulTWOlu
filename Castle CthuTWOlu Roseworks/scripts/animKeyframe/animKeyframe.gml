/// @description animation keyframe update bone data
/// @param {real} animation
/// @param {real} step
/// @param {real} track

//Hand Data
switch(argument2)
{
	case 0: h1 = 1 h2 = 2 break
	case 1: h1 = 1 h2 = 2 break
	case 2: h1 = 2 h2 = 1 break
}

//Tween and Set Data
if argument2 = 0 or animPriority[0] = false
{
	//Body
	legRotationDest[argument1,0] = legRotation[argument1,0]
	legRotationDest[argument1,1] = legRotation[argument1,1]
	headRotationDest[argument1] = headRotation[argument1]
	hairRotationDest[argument1] = hairRotation[argument1]
	bodyRotationDest[argument1] = bodyRotation[argument1]
	hipsRotationDest[argument1] = hipsRotation[argument1]

	bounce = sign(argument0.bounce[argument1])
	bounceTimer = argument0.bounce[argument1]
	flow = sign(argument0.flow[argument1])
	flowTimer = argument0.flow[argument1]
	hipsBounce = argument0.hipsBounce[argument1]
	skirtSprite = argument0.skirtSprite[argument1]
	legSprite[0] = legSprite[argument1,0]
	legSprite[1] = legSprite[argument1,1]
	xadj = argument0.xadj[argument1]
	yadj = argument0.yadj[argument1]
}

if argument2 = h1 or animPriority[h1] = false
{
	//Lead Hand
	handDistDest[h1] = argument0.handDist[argument1,1] 
	handDirDest[h1] = argument0.handDir[argument1,1] 
	handHeightDest[h1] = argument0.handHeight[argument1,1]
	itemRotDest[h1] = argument0.itemRot[argument1,1]
	itemZRotDest[h1] = argument0.itemZRot[argument1,1]

	itemFlip[h1] = argument0.itemFlip[argument1,1]
	itemSprite[h1] = argument0.itemSprite[argument1,1]
	itemHoldAdjust[h1] = argument0.itemHoldAdjust[argument1,1]
}

if argument2 = h2 or animPriority[h2] = false
{
	//Off Hand
	handDistDest[h2] = argument0.handDist[argument1,2] 
	handDirDest[h2] = argument0.handDir[argument1,2] 
	handHeightDest[h2] = argument0.handHeight[argument1,2]
	itemRotDest[h2] = argument0.itemRot[argument1,2]
	itemZRotDest[h2] = argument0.itemZRot[argument1,2]
	
	itemFlip[h2] = argument0.itemFlip[argument1,2]
	itemSprite[h2] = argument0.itemSprite[argument1,2]
	itemHoldAdjust[h2] = argument0.itemHoldAdjust[argument1,2]
}

//Trigger Effects
//TO DO

//Animation Character
animDelay[argument2] = argument0*animDelay[argument1]