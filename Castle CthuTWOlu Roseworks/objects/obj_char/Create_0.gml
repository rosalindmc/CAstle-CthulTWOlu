//Art Essentials
//animType = humanoid
animUpdate = true
alive = true
corpse = false
//shadowSprite = spr_shadow

//Temp Run animType Initialize (move to a create char script later so this can be adjusted)
//script_execute(animType,0)

//Movement Essentials
movement = 6        //Metres per second
moveMult = 1        //Malleable multiplier for movement speed
moveDT = 0          //Difficult terrain divider
moving = 0

floorZ = 0
floorID = -4

z = 0
wz = 0
hspd = 0
vspd = 0
zspd = 0
fric = 4            //% per second
accel = 2           //% max speed gained per second of acceleration

canMove = true      //Can move check
moveTimer = 0
canAttack = true    //Can attack check
sneak = false
sneakMovePen = .5

staggered = false
isProne = false
dangerous = false
launcher = noone
rhythm = 0

fatigued = false
canRoll = true
canDodge = true
dodgeCost = 1
dodgeSpeed = 12
dodgeTimer = 0
recentDodge = 0
altAttackKey = false

/*Animations
animIndex[0] = humanoidWalk    //Current animation (For Legs+Body)
animStep[0] = 0     //Current animation step
animDelay[0] = 0    //How many seconds to next step
animSpeed[0] = 1    //Multiplier for animation speed (can be negative)

animIndex[1] = weaponIdle    //Right Hand
animStep[1] = 0     
animDelay[1] = 1    
animSpeed[1] = 1    

animIndex[2] = weaponIdle    //Left Hand
animStep[2] = 0     
animDelay[2] = 1    
animSpeed[2] = 1    

bodyTwist = 0
greatWeapon = false
*/

//Targeting Essentials
targetX = x
targetY = y

vFacing = 0
hFacing = 1
facing = 0

turnSpeed = 360     //Degrees/second

//Control Script
controlScript = playerControl       //Temp, replace with ai control
player = true                       //Change to false in type script
autoTarget = noone;                   //This is so that if a player is using a controller, they can select an enemy

lastAttack = 0                      //When this character last attacked for the AI
inFormation = false                 //flag for being in a formation
joinsFormation = false
leader = noone

//Character stats
vitality = 1
endurance = 1
might = 1
wit = 1
lore = 1
will = 1

stealth = 1

//Experience
xp = 0
xpToLevel = 10
xpReward = 1
xpMult = 1
combatLevel = 1
talentPoints = 0

//Vitals
life = 12
lifeVis = 12
lifeMax = 12
lifeRegen = 0.0 //per second

stam = 4
stamVis = 4
stamMax = 4    
stamRegen = 6.0   //per second
stamDelay = 0.0

stability = 1.0
stabilityMax = 1.0
stabilityRegen = 3.0
stabilityDelay = 0.0
recovery = 5.0 
staggerRecovery = 0.0

armour = 0.0
physicalResist = 0.0
magicResist = 0.0

for(i = 0; i<=12; i++){
    damageResist[i] = 0.0
}

//Fighting
hold[1] = 0
hold[2] = 0
charge[1] = 0
charge[2] = 0
meleeSwing[1] = 1
meleeSwing[2] = -1
queuedAnim[1] = -4
queuedAnim[2] = -4
strike[1] = 0
strike[2] = 0
sweetSpot = false
sweetSpotBonus = false
fumble = false
perfectTimeMod = .5
perfectTimeDmgMod = 0.1
kick = 0
memory[1] = noone
memory[2] = noone

sticking = 0                        //The hand you are using to hold a sticking weapon
stuck = ds_list_create()            //The weapons sticking you that are held
stuckWithItem = ds_list_create()    //Unheld stuck items

clashing = false
clashingWith = noone

grappling = false
grappled = false
grappler = noone        //person grappling you
grappleTarg = noone     //person you are grappling

lastStand = false

interactProgress = 0

//Inventory
canInv = true
inventorySize = 5
for(i = 0; i < inventorySize; i++)
{
    inventory[i] = noone
}
handItem[1] = noone
handItemSlot[1] = -1
handItem[2] = noone
handItemSlot[2] = -1

hoverItem = 0
pointInteract = noone

interactId = noone

//Status Effects
sEffect = ds_list_create()

ctrlFacing = 0

team = 0