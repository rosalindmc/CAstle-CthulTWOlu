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
	if argument1 != argument0.animKeyLength
	{
		//Body
		legRotDest[1] = argument0.legRotation[argument1,1]
		legRotDest[2] = argument0.legRotation[argument1,2]
		headRotDest = argument0.headRotation[argument1]
		hairRotDest = argument0.hairRotation[argument1]
		bodyRotDest = argument0.bodyRotation[argument1]
		hipsRotDest = argument0.hipsRotation[argument1]
	}

	if argument1 != 0
	{
		bounce = sign(argument0.bounce[argument1-1])
		bounceTimer = argument0.bounce[argument1-1]
		flow = sign(argument0.flow[argument1-1])
		flowTimer = argument0.flow[argument1-1]
		hipsBounce = argument0.hipsBounce[argument1-1]
		skirtFlow = argument0.skirtFlow[argument1-1]
		legSprite[1] = argument0.legSprite[argument1-1,1]
		legSprite[2] = argument0.legSprite[argument1-1,2]
		xAdj = argument0.xAdj[argument1-1]
		yAdj = argument0.yAdj[argument1-1]
	}
}

if argument2 = h1 or animPriority[h1] = false
{
	if argument1 != argument0.animKeyLength
	{
		//Lead Hand
		handDistDest[h1] = argument0.handDist[argument1,1] 
		handDirDest[h1] = argument0.handDir[argument1,1] 
		handHeightDest[h1] = argument0.handHeight[argument1,1]
		itemRotDest[h1] = argument0.itemRot[argument1,1]
		itemZRotDest[h1] = argument0.itemZRot[argument1,1]
	}
	
	if argument1 != 0
	{
		itemFlip[h1] = argument0.itemFlip[argument1-1,1]
		itemSprite[h1] = argument0.itemSprite[argument1-1,1]
		itemHoldAdjust[h1] = argument0.itemHoldAdjust[argument1-1,1]
	}
}

if argument2 = h2 or animPriority[h2] = false
{
	if argument1 != argument0.animKeyLength
	{
		//Off Hand
		handDistDest[h2] = argument0.handDist[argument1,2] 
		handDirDest[h2] = argument0.handDir[argument1,2] 
		handHeightDest[h2] = argument0.handHeight[argument1,2]
		itemRotDest[h2] = argument0.itemRot[argument1,2]
		itemZRotDest[h2] = argument0.itemZRot[argument1,2]
	}
	
	if argument1 != 0
	{
		itemFlip[h2] = argument0.itemFlip[argument1-1,2]
		itemSprite[h2] = argument0.itemSprite[argument1-1,2]
		itemHoldAdjust[h2] = argument0.itemHoldAdjust[argument1-1,2]
	}
}

//Trigger Effects
//TO DO

if argument1 != argument0.animKeyLength
{
	//Animation Character
	animDelay[argument2] = argument0.animDelay[argument1]
}
else
{
	animDelay[argument2] = .1
}