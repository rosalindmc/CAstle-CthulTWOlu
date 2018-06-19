/// @description Insert description here
// You can write your code in this editor

#region //Core
text = ""
height = 270
menu = 3
submenu = 1
dragged = false
showMenu = 0

y += 500

scroll = 0
scrollMax = 0
#endregion

#region //Character Modifiers
ix = 0
iy = 0

createSubmenuSelector(1,1,100,"Stats")
createSubmenuSelector(2,1,100,"Other")

enum charFld
{
	vitality = 0,
	endurance = 1,
	might = 2,
	will = 3,
	wits = 4,
	lore = 5,
	life = 6,
	stam = 7,
	stability = 8,
	armour = 9,
	character = 10,
	dodge = 11,
	roll = 12,
	activeAbility = 13,
	colour = 14
}

ix = 10
iy = 20
num = 0

createEditField(0,"Life",charFld.life,1,1)
createEditField(0,"Stamina",charFld.stam,1,1)
createEditField(0,"Vitality",charFld.vitality,1,1)
createEditField(0,"Endurance",charFld.endurance,1,1)
createEditField(0,"Might",charFld.might,1,1)
createEditField(0,"Will",charFld.will,1,1)
createEditField(0,"Wits",charFld.wits,1,1)
createEditField(0,"Lore",charFld.lore,1,1)

iy = 20
num = 0

createEditField(0,"Character",charFld.character,1,2)
createEditField(0,"Dodge",charFld.dodge,1,2)
createEditField(0,"Roll",charFld.roll,1,2)
createEditField(0,"Active Ability",charFld.activeAbility,1,2)
createEditField(0,"Armour",charFld.armour,1,2)
createEditField(0,"Stability",charFld.stability,1,2)
createEditField(1,"Description",0,1,2)
createEditField(2,"Colour",charFld.colour,1,2)

//Active Ability
//Starting Perks
//Starting Items

#endregion

#region //Monster Modifiers
ix = 0
iy = 0

createSubmenuSelector(1,2,67,"Stats")
createSubmenuSelector(2,2,66,"Substats")
createSubmenuSelector(3,2,67,"Aesthetics")

#endregion

#region //Pattern Modifiers
ix = 0
iy = 0

createSubmenuSelector(1,3,200,"Attributes")
#endregion

#region //Animations Modifiers
ix = 0
iy = 0

createSubmenuSelector(1,4,67,"Body")
createSubmenuSelector(2,4,66,"Arms")
createSubmenuSelector(3,4,67,"General")

enum animFld
{
	twist = 0,
	llegRot = 7,
	llegSprite = 8,
	rlegRot = 9,
	rlegSprite = 10,
	hipsBounce = 11,
	hipsRot = 12,
	bodyRot = 13,
	headRot = 14,
	headimage = 25,
	xadj = 26,
	yadj = 27,
	flow = 28,
	bounce = 29,
	skirtsprite = 30,
	hairrot = 31,
	
	mhandDist = 1,
	mhandDir = 2,
	mhandHeight = 3,
	ohandDist = 4,
	ohandDir = 5,
	ohandHeight = 6,
	mitemrot = 15,
	mitemzrot = 16,
	mitemflip = 17,
	mitemsprite = 18,
	mitemhold = 19,
	oitemrot = 20,
	oitemzrot = 21,
	oitemflip = 22,
	oitemsprite = 23,
	oitemhold = 24,
	
	animlength = 0
}

ix = 10
iy = 20
num = 0

createEditField(4,"Lft Leg Rotation",animFld.llegRot,4,1)
createEditField(4,"Lft Leg Animation",animFld.llegSprite,4,1)
createEditField(4,"Rgt Leg Rotation",animFld.rlegRot,4,1)
createEditField(4,"Rgt Leg Animation",animFld.rlegSprite,4,1)
createEditField(4,"Hip Bounce",animFld.hipsBounce,4,1)
createEditField(4,"Hip Rotation",animFld.hipsRot,4,1)
createEditField(4,"Skirt Animation",animFld.skirtsprite,4,1)
createEditField(4,"Body Twist",animFld.twist,4,1)
createEditField(4,"Body Rotation",animFld.bodyRot,4,1)
createEditField(4,"Body Rotation",animFld.bodyRot,4,1)
createEditField(4,"Boob Bounce",animFld.bounce,4,1)
createEditField(4,"Head Rotation",animFld.headRot,4,1)
createEditField(4,"Head Animation",animFld.headimage,4,1)
createEditField(4,"Hair Rotation",animFld.hairrot,4,1)
createEditField(4,"Hair Animation",animFld.flow,4,1)
createEditField(4,"Animation X",animFld.xadj,4,1)
createEditField(4,"Animation Y",animFld.yadj,4,1)

iy = 20
num = 0

createEditField(4,"Mn Hand Distance",animFld.mhandDist,4,2)
createEditField(4,"Mn Hand Direction",animFld.mhandDir,4,2)
createEditField(4,"Mn Hand Height",animFld.mhandHeight,4,2)
createEditField(4,"Mn Item Rotation",animFld.mitemrot,4,2)
createEditField(4,"Mn Item z Rotation",animFld.mitemzrot,4,2)
createEditField(4,"Mn Item Flip",animFld.mitemflip,4,2)
createEditField(4,"Mn Item Anim",animFld.mitemsprite,4,2)
createEditField(4,"Mn Item Hold",animFld.mitemhold,4,2)
createEditField(4,"Of Hand Distance",animFld.ohandDir,4,2)
createEditField(4,"Of Hand Direction",animFld.ohandDir,4,2)
createEditField(4,"Of Hand Height",animFld.ohandHeight,4,2)
createEditField(4,"Of Item Rotation",animFld.oitemrot,4,2)
createEditField(4,"Of Item z Rotation",animFld.oitemzrot,4,2)
createEditField(4,"Of Item Flip",animFld.oitemflip,4,2)
createEditField(4,"Of Item Anim",animFld.oitemsprite,4,2)
createEditField(4,"Of Item Hold",animFld.oitemhold,4,2)

iy = 20
num = 0

createEditField(0,"Animation Length",animFld.animlength,4,3)
#endregion

#region //Doodad Modifiers
ix = 0
iy = 0

createSubmenuSelector(1,6,100,"Mechanics")
createSubmenuSelector(2,6,100,"Aesthetics")
#endregion

#region //Haunt Modifiers
ix = 0
iy = 0

createSubmenuSelector(1,7,200,"Attributes")
#endregion

#region //Item Modifiers
ix = 0
iy = 0

createSubmenuSelector(1,8,67,"Item")
createSubmenuSelector(2,8,66,"Weapon")
createSubmenuSelector(3,8,67,"Aesthetics")
#endregion

#region //Trait Modifiers
ix = 0
iy = 0

createSubmenuSelector(1,10,200,"Attributes")
#endregion

#region //Spell Modifiers
ix = 0
iy = 0

createSubmenuSelector(1,9,200,"Casting")
#endregion

#region //Sprawler Modifiers
ix = 0
iy = 0

createSubmenuSelector(1,5,200,"Attributes")
#endregion