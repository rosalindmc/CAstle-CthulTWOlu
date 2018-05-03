

switch(argument0)
{
	case 0:
	#region //Establish Humanoid variables

	#region //Surface Details
	charSurfSize = 28
	charSurf = surface_create(charSurfSize,charSurfSize)
	#endregion

	#region //Appearance Info
	gender = false
	clothingSprite = spr_courtesanDress
	skirtSprite = spr_none
	hairSprite = spr_none
	hairColour = c_black
	helmSprite = spr_none
	
	skinTone = make_color_rgb(255,235,215) //c_white //choose(skinTan,skinDark,skinBrown,skinPink,skinPale)
	#endregion

	#region //Anim
	legLength = 4
	bounce = 0
	bounceTimer = 0
	flow = 0        //0 basic, 1 bounce, 2 flow left, 3 flow right
	flowTimer = 0
	hairRot = 0
	#endregion

	#region //Bone Information
	bodySprite = spr_humanoid
	headSprite = spr_humanoidHead
	
	hipsImage = 0
	hipsRot = 0
	hipsVFacing = 0
	hipsHFacing = 1
	hipsAlpha = 1
	hipsBounce = 0
	hipsProfile = 0

	bodyImage = 0
	bodyXAdjust = 0
	bodyYAdjust = 4
	bodyRot = 0
	bodyVFacing = 0
	bodyHFacing = 1
	bodyProfile = 0
	twist = 0

	chstImage = 0
	chstXAdjust = 1
	chstYAdjust = -1

	shldrXAdjust[1] = 1
	shldrYAdjust[1] = 1
	shldrXAdjust[2] = 2
	shldrYAdjust[2] = 1

	handDist[1] = 4
	handDistDest[1] = 4
	handDir[1] = 0
	handDirDest[1] = 0
	handHeight[1] = 2
	handHeightdest[1] = 2

	legX[1] = 0
	legY[1] = 0
	legRot[1] = 0
	legOffset[1] = 3
	legAdjust[1] = 1
	legAnim[1] = 0

	legX[2] = 0
	legY[2] = 0
	legRot[2] = 0
	legOffset[2] = 1
	legAdjust[2] = 1
	legAnim[2] = 1

	itemRot[1] = 0
	itemRotDest[1] = 0
	itemZRot[1] = 0
	itemZRotDest[1] = 0
	itemSprite[1] = spr_none
	itemSpriteIndex[1] = 0
	itemFlip[1] = 1
	itemHoldAdjust[1] = 0

	handDist[2] = 4
	handDistDest[2] = 4
	handDir[2] = -180
	handDirDest[2] = -180
	handHeight[2] = 2
	handHeightDest[2] = 2

	itemRot[2] = 0
	itemRotDest[2] = 0
	itemZRot[2] = 0
	itemZRotDest[2] = 0
	itemSprite[2] = spr_none
	itemSpriteIndex[2] = 0
	itemFlip[2] = 1
	itemHoldAdjust[2] = 0

	armSpriteLength = 5
	armAlpha[1] = 1
	armAlpha[2] = 1

	headImage = 0
	headXAdjust = 0
	headYAdjust = 4
	headRot = 0
	headAlpha = 1

	xAdj = 0
	yAdj = 0

	hipsX = 0
	hipsY = 0

	bodyX = 0
	bodyY = 0

	chstX = 0
	chstY = 0

	headX = 0
	headY = 0

	shldrX[1] = 0
	shldrY[1] = 0

	shldrX[2] = 0
	shldrY[2] = 0

	handX[1] = 0
	handY[1] = 0
	handX[2] = 0
	handY[2] = 0
	#endregion

	#region //Body Variation
	switch(0)//choose(0,1,2,3))
	{
	case 1:
	//Medium
	bodyImage = 1
	chstImage = 1
	chstXAdjust = 1
	chstYAdjust = -1
	shldrXAdjust[1] = 2
	shldrYAdjust[1] = 1
	shldrXAdjust[2] = 3
	shldrYAdjust[2] = 1
	headXAdjust = 0
	headYAdjust = 4
	break

	case 2: 
	//Large
	bodyImage = 2
	chstImage = 2
	chstXAdjust = 0
	chstYAdjust = -1
	shldrXAdjust[1] = 3
	shldrYAdjust[1] = 2
	shldrXAdjust[2] = 4
	shldrYAdjust[2] = 2
	headXAdjust = 0
	headYAdjust = 4
	break

	case 3: 
	//Huge
	bodyImage = 3
	chstImage = 2
	hipsImage = 1
	chstXAdjust = 0
	chstYAdjust = -1
	shldrXAdjust[1] = 2
	shldrYAdjust[1] = 2
	shldrXAdjust[2] = 3
	shldrYAdjust[2] = 2
	legOffset[1] = 4
	headXAdjust = 0
	headYAdjust = 4
	break
	}
	#endregion
	
	#endregion
	break
	
	case 1:
	#region //Special Timers
	if bounceTimer > 0
	{
	    bounceTimer -= 1/global.frameRate
	    if bounceTimer <= 0
	    {
	        bounceTimer = 0
	        bounce = 0
	    }
	}

	if flowTimer > 0
	{
	    flowTimer -= 1/global.frameRate
	    if flowTimer <= 0
	    {
	        flowTimer = 0
	        flow = 0
	    }
	}
	#endregion

	#region //Draw Character
	if surface_exists(charSurf)  
	{        
	    surface_set_target(charSurf)
	    draw_clear_alpha(c_white,0)
        
	    #region //Body Twist
	    i = 0

		if abs(angle_difference(facing,0)) < 85
		{
		    hFacing = 1    
		}
		else if abs(angle_difference(facing,180)) < 85
		{
		    hFacing = -1
		}
		if abs(angle_difference(facing,90)) < 85
		{
		    vFacing = 1
		}
		else if abs(angle_difference(facing,270)) < 85
		{
		    vFacing = 0
		}

		//Facing 6 angle
		if hFacing = 1 and vFacing = 1
		{
			i = 2
		}
		else if hFacing = -1 and vFacing = 1
		{
			i = 3
		}
		else if hFacing = -1 and vFacing = 0
		{
			i = 5
		}
		else if hFacing = 1 and vFacing = 0
		{
			i = 6
		}

		i += twist
		hipsHFacing = hFacing
		hipsVFacing = vFacing
		bodyHFacing = hFacing
	    bodyVFacing = vFacing
		bodyProfile = 0
		hipsProfile = 0
		
		switch(i)
		{
		case 0:		//Bottom Right
			bodyVFacing = 0
		    bodyHFacing = 1
		    shldrSwap = 1
		break
		case 1:		//Right
		    bodyHFacing = 1
		    shldrSwap = 1
			bodyProfile = 1
			hipsProfile = 1
		break
		case 2:		//Top Right
		    bodyVFacing = 1
		    bodyHFacing = 1
		    shldrSwap = 0
			
		break
		case 3:		//Top Left
		    bodyVFacing = 1
		    bodyHFacing = -1
		    shldrSwap = 1
		break
		case 4:		//Left
		    bodyHFacing = -1
		    shldrSwap = 0
			bodyProfile = 1
			hipsProfile = 1
		break
		case 5:		//Bottom Left
		    bodyVFacing = 0
		    bodyHFacing = -1
		    shldrSwap = 1
		break
		case 6:		//Bottom Right
		    bodyVFacing = 0
		    bodyHFacing = 1
		    shldrSwap = 0
		break
		case 7:		//Right
		    bodyHFacing = 1
		    shldrSwap = 1
			bodyProfile = 1
			hipsProfile = 1
		break
		}
		#endregion
    
	    #region //Bone Locations
	    hipsX = round(charSurfSize*.5)+lengthdir_x(legLength, hipsRot+90)+xAdj
	    hipsY = round(charSurfSize*.75)+lengthdir_y(legLength, hipsRot+90)-yAdj
    
	    bodyX = hipsX+lengthdir_x(bodyYAdjust, bodyRot+90)+lengthdir_x(bodyXAdjust*bodyHFacing, bodyRot)
	    bodyY = hipsY+lengthdir_y(bodyYAdjust, bodyRot+90)+lengthdir_y(bodyXAdjust*bodyHFacing, bodyRot)
    
	    chstX = bodyX+lengthdir_x(chstYAdjust+bounce, bodyRot+90)+lengthdir_x(chstXAdjust*bodyHFacing, bodyRot)
	    chstY = bodyY+lengthdir_y(chstYAdjust+bounce, bodyRot+90)+lengthdir_y(chstXAdjust*bodyHFacing, bodyRot)
    
	    headX = bodyX+lengthdir_x(headYAdjust, bodyRot+90)+lengthdir_x(headXAdjust*bodyHFacing, bodyRot)
	    headY = bodyY+lengthdir_y(headYAdjust, bodyRot+90)+lengthdir_y(headXAdjust*bodyHFacing, bodyRot)
    
	    shldrX[1] = bodyX+lengthdir_x(shldrYAdjust[1], bodyRot+90)+lengthdir_x(shldrXAdjust[1]*bodyHFacing, bodyRot)+min(bodyHFacing,0)
	    shldrY[1] = bodyY+lengthdir_y(shldrYAdjust[1], bodyRot+90)+lengthdir_y(shldrXAdjust[1]*bodyHFacing, bodyRot)
    
	    shldrX[2] = bodyX+lengthdir_x(shldrYAdjust[2], bodyRot+90)+lengthdir_x(shldrXAdjust[2]*bodyHFacing, bodyRot+180)+min(bodyHFacing,0)
	    shldrY[2] = bodyY+lengthdir_y(shldrYAdjust[2], bodyRot+90)+lengthdir_y(shldrXAdjust[2]*bodyHFacing, bodyRot+180)
    
	    handX[1] = round(bodyX+lengthdir_x(handDist[1], (round(facing/15)*15)+handDir[1]))
	    handY[1] = round(bodyY+lengthdir_y(handDist[1], (round(facing/15)*15)+handDir[1]))-handHeight[1]
    
	    handX[2] = round(bodyX+lengthdir_x(handDist[2], (round(facing/15)*15)+handDir[2]))
	    handY[2] = round(bodyY+lengthdir_y(handDist[2], (round(facing/15)*15)+handDir[2]))-handHeight[2]    
		
		legX[1] = round(hipsX+lengthdir_x(legOffset[1]*hFacing, hipsRot)+lengthdir_x(legAdjust[1]+hipsBounce, hipsRot-90))
		legY[1] = round(hipsY+lengthdir_y(legOffset[1]*hFacing, hipsRot)+lengthdir_y(legAdjust[1]+hipsBounce, hipsRot-90))
		
		legX[2] = round(hipsX+lengthdir_x(legOffset[2]*hFacing, hipsRot+180)+lengthdir_x(legAdjust[2]+hipsBounce, hipsRot-90))
		legY[2] = round(hipsY+lengthdir_y(legOffset[2]*hFacing, hipsRot+180)+lengthdir_y(legAdjust[2]+hipsBounce, hipsRot-90))		
		#endregion
	
	    #region //Hand Adjustments
	    //If using a great weapon, move second hand
	    if greatWeapon = true and handItem[1] != noone
	    {
	        handX[2] = round(handX[1]+lengthdir_x(handItem[1].gwPoint, handItem[1].image_angle+handItem[1].zAngle))
	        handY[2] = round(handY[1]+lengthdir_y(handItem[1].gwPoint, handItem[1].image_angle+handItem[1].zAngle))
        
	        handX[1] = round(handX[1]+lengthdir_x(handItem[1].gwPoint*-1, handItem[1].image_angle+handItem[1].zAngle))
	        handY[1] = round(handY[1]+lengthdir_y(handItem[1].gwPoint*-1, handItem[1].image_angle+handItem[1].zAngle))
	    }
		#endregion
    
	    #region //Arm Directions
	    handPoint[1] = point_direction(shldrX[1+shldrSwap],shldrY[1+shldrSwap],handX[1],handY[1])
	    handPoint[2] = point_direction(shldrX[2-shldrSwap],shldrY[2-shldrSwap],handX[2],handY[2])
	    armLength[1] = min(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap]),armSpriteLength-1)
	    armStretch[1] = max(point_distance(handX[1],handY[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap]),armSpriteLength)/(armSpriteLength)
	    armLength[2] = min(point_distance(handX[2],handY[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap]),armSpriteLength-1)
	    armStretch[2] = max(point_distance(handX[2],handY[2],shldrX[2-shldrSwap],shldrY[2-shldrSwap]),armSpriteLength)/(armSpriteLength)
		#endregion
	
		#region //Draw Parts
		//Hair
	    if vFacing = 0
	    {
	        draw_sprite_ext(hairSprite,4+bounce,headX,headY,hFacing,1,hairRot,hairColour,1)    
	    }
    
	    if handDir[1] < 180
	    {
		    //Right Arm
		    //draw_sprite_ext(bodySprite,36+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],armStretch[1],bodyHFacing,handPoint[1],skinTone,armAlpha[1])
		    //draw_sprite_ext(clothingSprite,36+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],armStretch[1],bodyHFacing,handPoint[1],c_white,armAlpha[1])
	    }
    
	    if handDir[2] < 180
	    {
		    //Left Arm
		    //draw_sprite_ext(bodySprite,36+armLength[2]+armSpriteLength,shldrX[2-shldrSwap],shldrY[2-shldrSwap],armStretch[2],bodyHFacing,handPoint[2],skinTone,armAlpha[2])
		    //draw_sprite_ext(clothingSprite,36+armLength[2]+armSpriteLength,shldrX[2-shldrSwap],shldrY[2-shldrSwap],armStretch[2],bodyHFacing,handPoint[2],c_white,armAlpha[2])
	    }
   
	
	    //Skirt
	    draw_sprite_ext(skirtSprite,(flow*2)+1-hipsVFacing,hipsX,hipsY,hipsHFacing,1,hipsRot,c_gray,hipsAlpha)
	    
		//Hips
		draw_sprite_ext(bodySprite,18+(hipsImage*3)+max(hipsVFacing,hipsProfile*2),hipsX,hipsY,hipsHFacing,1,hipsRot,c_green,hipsAlpha)
		
	    //Legs
		draw_sprite_ext(bodySprite,24+(legAnim[1]*2)+hipsVFacing,legX[1],legY[1],hipsHFacing,1,legRot[1],skinTone,hipsAlpha)
		draw_sprite_ext(bodySprite,24+(legAnim[2]*2)+hipsVFacing,legX[2],legY[2],hipsHFacing,1,legRot[2],skinTone,hipsAlpha)	    

		//Skirt
		draw_sprite_ext(clothingSprite,18+(hipsImage*3)+hipsVFacing,hipsX,hipsY,hipsHFacing,1,hipsRot,c_white,hipsAlpha)
	    draw_sprite_ext(skirtSprite,(flow*2)+hipsVFacing,hipsX,hipsY,hipsHFacing,1,hipsRot,c_white,hipsAlpha)
    
	    //Body
	    if bodyVFacing = 1 and gender = 0
	    {
	        draw_sprite_ext(bodySprite,12+(chstImage*2),chstX,chstY,bodyHFacing,1,bodyRot,skinTone,1)
	        draw_sprite_ext(clothingSprite,12+(chstImage*2),chstX,chstY,bodyHFacing,1,bodyRot,c_white,1)
	    }
    
	    draw_sprite_ext(bodySprite,(bodyImage*3)+max(bodyVFacing,bodyProfile*2),bodyX,bodyY,bodyHFacing,1,bodyRot,skinTone,1)
	    draw_sprite_ext(clothingSprite,(bodyImage*3)+bodyVFacing,bodyX,bodyY,bodyHFacing,1,bodyRot,c_white,1)
    
	    if bodyVFacing = 0 and gender = 0
	    {
	        draw_sprite_ext(bodySprite,12+(chstImage*2),chstX,chstY,bodyHFacing,1,bodyRot,skinTone,1)
	        draw_sprite_ext(clothingSprite,12+(chstImage*2),chstX,chstY,bodyHFacing,1,bodyRot,c_white,1)
	    }
        
	    //Head
	    draw_sprite_ext(headSprite,headImage+vFacing,headX,headY,hFacing,1,headRot,skinTone,headAlpha)
	    draw_sprite_ext(helmSprite,headImage+vFacing,headX,headY,hFacing,1,headRot,c_white,headAlpha)
	    draw_sprite_ext(hairSprite,(bounce*2)+vFacing,headX,headY,hFacing,1,headRot,hairColour,headAlpha)
		
	    if vFacing = 1
	    {
	        draw_sprite_ext(hairSprite,4+bounce,headX,headY,hFacing,1,hairRot,hairColour,headAlpha)    
	    }
    
	    if handDir[1] >= 180
	    {
	        //Right Arm
	        //draw_sprite_ext(bodySprite,36+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],armStretch[1],bodyHFacing,handPoint[1],skinTone,armAlpha[1])
	        //draw_sprite_ext(clothingSprite,36+armLength[1],shldrX[1+shldrSwap],shldrY[1+shldrSwap],armStretch[1],bodyHFacing,handPoint[1],c_white,armAlpha[1])
	    }
    
	    if handDir[2] >= 180
	    {
	        //Left Arm
	        //draw_sprite_ext(bodySprite,36+armLength[2]+armSpriteLength,shldrX[2-shldrSwap],shldrY[2-shldrSwap],armStretch[2],bodyHFacing,handPoint[2],skinTone,armAlpha[2])
	        //draw_sprite_ext(clothingSprite,36+armLength[2]+armSpriteLength,shldrX[2-shldrSwap],shldrY[2-shldrSwap],armStretch[2],bodyHFacing,handPoint[2],c_white,armAlpha[2])
	    }
            
	    //draw_set_colour(c_red)
	    //draw_line(shldrX[2-shldrSwap],shldrY[2-shldrSwap],shldrX[2-shldrSwap]+lengthdir_x(armStretch[2]*armSpriteLength,handPoint[2]),shldrY[2-shldrSwap]+lengthdir_y(armStretch[2]*armSpriteLength,handPoint[2]))
	    //draw_set_colour(c_green)
	    //draw_point(shldrX[2-shldrSwap],shldrY[2-shldrSwap])
	    //draw_point(handX[2],handY[2])
	    //draw_line(shldrX[2-shldrSwap],shldrY[2-shldrSwap],handX[2],handY[2])

	    //draw_line(shldrX[1+shldrSwap],shldrY[1+shldrSwap],handX[1+shldrSwap],handY[1+shldrSwap])
	    //draw_point(shldrX[1+shldrSwap],shldrY[1+shldrSwap])
		#endregion
    
	    surface_reset_target()
	}
	else
	{
	    charSurf = surface_create(charSurfSize,charSurfSize)
	}
	#endregion
	break
	
	case 2:
	return editIcon_humanoid
	break
}
