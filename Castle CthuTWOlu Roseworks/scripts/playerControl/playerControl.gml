//Move Control

#region //Check Keys
upKey = keyboard_check(global.upKey)
leftKey = keyboard_check(global.leftKey)
downKey = keyboard_check(global.downKey)
rightKey = keyboard_check(global.rightKey)
    
lftclickKey = mouse_check_button(mb_left)
rgtclickKey = mouse_check_button(mb_right)
lftclickedKey = mouse_check_button_pressed(mb_left)
rgtclickedKey = mouse_check_button_pressed(mb_right)
lftreleaseKey = mouse_check_button_released(mb_left)
rgtreleaseKey = mouse_check_button_released(mb_right)
interactKey = keyboard_check_pressed(global.interactKey)
dodgeKey = keyboard_check_released(global.defendKey)
reloadKey = keyboard_check_pressed(global.reloadKey)
throwKey = keyboard_check(global.throwKey)
sneakKey = keyboard_check_pressed(global.sneakKey)
inventoryKey = keyboard_check(global.inventoryKey)
#endregion	
	
#region //Movement
moveT = 1 //Later replace with difficult terrain multiplier

if canMove = true
{
    //Horizontal Movement
    if leftKey-rightKey = 1
    {
        hspd = max(-moveT,hspd-(moveT*(accel+fric)/global.frameRate))
    }
    else if leftKey-rightKey = -1
    {
        hspd = min(moveT,hspd+(moveT*(accel+fric)/global.frameRate))
    }
    
    //Vertical Movement
    if upKey-downKey = 1
    {
        vspd = max(-moveT,vspd-(moveT*(accel+fric)/global.frameRate))
    }
    else if upKey-downKey = -1
    {
        vspd = min(moveT,vspd+(moveT*(accel+fric)/global.frameRate))
    }
    
    hT = hspd
    vT = vspd
    dT = point_distance(0,0,hT,vT)
    hspd = lengthdir_x(min(moveT,dT),point_direction(0,0,hT,vT))
    vspd = lengthdir_y(min(moveT,dT),point_direction(0,0,hT,vT))
}
#endregion

#region //Inventory Control
//
#endregion

#region //Dodge Control
if (dodgeKey = true and canMove = true and stam >= 0 and (moving != 0))
{
    //dodgeRoll(point_direction(0,0,hspd,vspd))  
}
#endregion

#region //Attack/Use Control
if canAttack = true and inventoryKey = false
{
    //Interact Control
    //interactSearch()
    
    if interactKey = true and clashing = false
    {
        //interact()  
    }
    
    //Use Item
    if lftclickedKey = true
    {
        //useItem(1,0)  
    }
    if rgtclickedKey = true
    {
        //useItem(2,0)  
    }
}

//Release Use Item
if lftreleaseKey = true
{
    //useItem(1,1)  
}
if rgtreleaseKey = true
{
    //useItem(2,1)  
}
#endregion

#region //Targeting Control
//Targeting
targetX = mouse_x
targetY = mouse_y
#endregion

#region //Sneak Control
if sneakKey = true and canMove = true
{
    sneak = 1-sneak
}
#endregion

#region //Slow mo (Move this somewhere more logical later)
if inventoryKey = true or clashing != false
{
    global.frameRate = 2*room_speed
}
else
{
    global.frameRate = room_speed    
}
#endregion