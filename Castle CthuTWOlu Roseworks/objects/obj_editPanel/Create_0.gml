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
	activeAbility = 13
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
createEditField(2,"Colour",0,1,2)

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

createSubmenuSelector(1,4,200,"Animations")
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