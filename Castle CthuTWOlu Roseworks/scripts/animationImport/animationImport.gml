animKeyLength = argument0.attributes[animFld.animlength]

for(i = 0; i < animKeyLength; i++)
{
	twist[i] = argument0.animation[animFld.twist,i]
	legRotation[i,1] = argument0.animation[animFld.llegRot,i]
	legRotation[i,2] = argument0.animation[animFld.rlegRot,i]
	headRotation[i] = argument0.animation[animFld.headRot,i]
	headImage[i] = argument0.animation[animFld.headimage,i]
	hairRotation[i] = argument0.animation[animFld.hairrot,i]
	bodyRotation[i] = argument0.animation[animFld.bodyRot,i]
	hipsRotation[i] = argument0.animation[animFld.hipsRot,i]
	hipsBounce[i] = argument0.animation[animFld.hipsBounce,i]
	bounce[i] = argument0.animation[animFld.bounce,i]
	flow[i] = argument0.animation[animFld.flow,i]
	skirtFlow[i] = argument0.animation[animFld.skirtsprite,i]
	legSprite[i,1] = argument0.animation[animFld.llegSprite,i]
	legSprite[i,2] = argument0.animation[animFld.rlegSprite,i]
	xAdj[i] = argument0.animation[animFld.xadj,i]
	yAdj[i] = argument0.animation[animFld.yadj,i]
	handDist[i,1] = argument0.animation[animFld.mhandDist,i]
	handDir[i,1] = argument0.animation[animFld.mhandDir,i]
	handHeight[i,1] = argument0.animation[animFld.mhandHeight,i]
 	itemRot[i,1] = argument0.animation[animFld.mitemrot,i]
	itemZRot[i,1] = argument0.animation[animFld.mitemzrot,i]
	itemFlip[i,1] = argument0.animation[animFld.mitemflip,i]
	itemSprite[i,1] = argument0.animation[animFld.mitemsprite,i]
	itemHoldAdjust[i,1] = argument0.animation[animFld.mitemhold,i]
	handDist[i,2] = argument0.animation[animFld.ohandDist,i]
	handDir[i,2] = argument0.animation[animFld.ohandDir,i]
	handHeight[i,2] = argument0.animation[animFld.ohandHeight,i]
 	itemRot[i,2] = argument0.animation[animFld.oitemrot,i]
	itemZRot[i,2] = argument0.animation[animFld.oitemzrot,i]
	itemFlip[i,2] = argument0.animation[animFld.oitemflip,i]
	itemSprite[i,2] = argument0.animation[animFld.oitemsprite,i]
	itemHoldAdjust[i,2] = argument0.animation[animFld.oitemhold,i]
	
	if i >= 1
	{
		animDelay[i] = argument0.animation[animFld.keyLength,i]-argument0.animation[animFld.keyLength,i-1]
	}
	else
	{
		animDelay[i] = argument0.animation[animFld.keyLength,i]
	}
}
