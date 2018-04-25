/// @description reset animations
/// @param {real} track

animStep[argument0] = 0
animSpeed[argument0] = 1

/*Reset animations of this type to 
switch(argument0)
{
    case 0:
    animIndex[argument0] = humanoid(3)  //Replace with animType(3)
    script_execute(animIndex[argument0],0,argument0)
    break
    
    case 1:
    case 2:
    if handItem[argument0] = noone or (argument0 = 2 and greatWeapon = true)
    {
        animIndex[argument0] = weaponIdle
    }
    else if altAttackKey = true
    {
        animIndex[argument0] = handItem[argument0].anim[8]      
    }
    else
    {
        animIndex[argument0] = handItem[argument0].anim[0]   
    }
    script_execute(animIndex[argument0],0,argument0)
    break
}