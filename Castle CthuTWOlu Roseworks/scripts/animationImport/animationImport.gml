animKeyLength = argument0.attributes[animFld.animlength]

for(i = 0; i < animKeyLength; i++)
{
	twist = animFld.twist
	legRotation[i,0] = animFld.llegRot
	legRotation[i,1] = animFld.rlegRot
	headRotation[i] = animFld.headRot
	headImage[i] = animFld.headimage
	hairRotation[i] = animFld.hairrot
	bodyRotation[i] = animFld.bodyRot
	hipsRotation[i] = animFld.hipsRot
	hipsBounce[i] = animFld.hipsBounce
	bounce[i] = animFld.bounce
	flow[i] = animFld.flow
	skirtSprite[i] = animFld.skirtsprite
	legSprite[i,0] = animFld.llegSprite
	legSprite[i,1] = animFld.rlegSprite
	xadj[i] = animFld.xadj
	yadj[i] = animFld.yadj
	handDist[1] = animFld.mhandDist
	handDir[1] = animFld.mhandDir
	handHeight[1] = animFld.mhandHeight
 	itemRot[1] = animFld.mitemrot
	itemZRot[1] = animFld.mitemzrot
	itemFlip[1] = animFld.mitemflip
	itemSprite[1] = animFld.mitemsprite
	itemHoldAdjust[1] = animFld.mitemhold
	handDist[2] = animFld.ohandDist
	handDir[2] = animFld.ohandDir
	handHeight[2] = animFld.ohandHeight
 	itemRot[2] = animFld.oitemrot
	itemZRot[2] = animFld.oitemzrot
	itemFlip[2] = animFld.oitemflip
	itemSprite[2] = animFld.oitemsprite
	itemHoldAdjust[2] = animFld.oitemhold
	animDelay[i] = animFld.keyLength
}


