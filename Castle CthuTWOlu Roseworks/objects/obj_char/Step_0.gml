#region //Move Limit
//Establish Friction
if z = floorZ
{
    if canMove = true
    {
        f = (movement*fric*moveMult/(1+moveDT+(sneak*sneakMovePen)))
    }
    else
    {
        f = (movement*fric)
    }
    
    //Apply Friction
    if hspd != 0 or vspd != 0
    {
        hT = hspd
        vT = vspd
        dT = point_distance(0,0,hT,vT)
        hspd = lengthdir_x(max(0,dT-(f/global.frameRate)),point_direction(0,0,hT,vT))
        vspd = lengthdir_y(max(0,dT-(f/global.frameRate)),point_direction(0,0,hT,vT))
    }
}
#endregion

//Execute Control Script
if alive = true
{
    script_execute(controlScript)
    
	#region //Facing
    tS = turnSpeed;
    
    tS /= 1+charge[1]+charge[2]
    
    if max(strike[1],strike[2]) = 1 or dodgeTimer != 0 or staggered = true
    {
        tS = 0
    }
	#endregion

	//Vis bars
	lifeVis += (life-lifeVis)/(global.frameRate)
	stamVis += (stam-stamVis)/(global.frameRate*.2)
}

#region //Movement
temp = 0

//gridX = median(0,floor(x/metre),global.sizeX-1)
//gridY = median(0,floor(y/metre),global.sizeY-1)
//floorID = global.floorLayout[gridX,gridY]
//floorZ = floorID.z
collide = false

#region //Gravity
/*
if z+max(0,zspd) > floorZ
{
    zspd -= grav/global.frameRate
    z += zspd*metre/global.frameRate
}
else
{
    if z != floorZ
    {
        //footStep(abs(zspd))
    }
    zspd = 0
    z = floorZ
}
*/
#endregion

#region //Horizontal Collision and Movement
if (place_meeting(x+(metre*hspd/global.frameRate),y,obj_solid) or collision_line(x,y,x+(metre*hspd/global.frameRate),y,obj_solid,false,true))
{
    while collision_line(x,y,x+sign(hspd),y,obj_solid,false,true) && hspd != 0{
        x -= sign(hspd)
        }
        
    if dangerous = true
    {
        collide = true
        hspd *= .2
    }   
    else
    {
        hspd = 0
    }
}

if collide = false
{
    x += metre*hspd/global.frameRate
}
#endregion

#region //Vertical Collision and Movement
if (place_meeting(x,y+(metre*vspd/global.frameRate),obj_solid) or collision_line(x,y,x,y+(metre*vspd/global.frameRate),obj_solid,false,true))
{
    while collision_line(x,y,x,y+sign(vspd),obj_solid,false,true) && vspd != 0{
        y -= sign(vspd)
        } 
    
    if dangerous = true
    {
        collide = true
        vspd *= .2
    } 
    else
    {
        vspd = 0
    }
}

if collide = false
{
    y += metre*vspd/global.frameRate
}
#endregion

#region //Set Speed for animations
if canMove = true and point_distance(x,y,xprevious,yprevious) > 0
{
    if abs(angle_difference(point_direction(x,y,targetX,targetY),point_direction(xprevious,yprevious,x,y))) < 90
    {
        moving = point_distance(x,y,xprevious,yprevious)*global.frameRate/metre
    }
    else
    {
        moving = -point_distance(x,y,xprevious,yprevious)*global.frameRate/metre
    }
}
else
{
    moving = 0
}
#endregion

#region //Collision
if collide = true
{
	/*
    dangerous = false
    collide = false
    
    cPow = point_distance(0,0,hspd,vspd)
    
    i = instance_create(x+lengthdir_x(metre*.5,point_direction(0,0,hspd,vspd)),y+lengthdir_y(metre*.5,point_direction(0,0,hspd,vspd)),obj_meleeCollider)
    i.owner = launcher
    i.originX = x
    i.originY = y
    i.dist = 0
    i.image_angle = point_direction(0,0,hspd,vspd)
    i.dmgType = dmgType.impact
    i.dmg = cPow*.1
    i.impact = cPow*.5    
    i.pen = 100
    i.z = 0
    i.image_alpha = 0
    //i.visNumbers = false
    i.sprite_index = spr_slam
    i.sticky = false
    i.image_xscale = .8
    i.image_yscale = .8   
    i.impactType = 1
    
    launcher = noone
	*/
}
#endregion

#region //Bound to map
x = median(0,x,room_width)
y = median(0,y,room_height)
#endregion

#endregion


isoDepth(0)