/// @description Insert description here
// You can write your code in this editor

if global.showMenu = global.menu and global.menu != 0
{
	x += (xstart-x+10)/(5)
}
else
{	
	x += (xstart-x-100)/(5)
}
x = round(x)

if x <= -20
{
	global.showMenu = global.menu
	switch(global.menu)
	{
		case 1:	sprite = editicon_characters text = "Character" break
		case 2:	sprite = editicon_monsters text = "Monsters" break
		case 3:	sprite = editicon_patterns text = "Patterns" break
		case 4:	sprite = editicon_animations text = "Animations" break
		case 5:	sprite = editicon_rooms text = "Sprawlers" break
		case 6:	sprite = editicon_doodads text = "Doodads" break
		case 7:	sprite = editicon_haunts text = "Haunts" break
		case 8:	sprite = editicon_items text = "Items" break
		case 9:	sprite = editicon_spells text = "Spells" break
		case 10:sprite = editicon_traits text = "Traits" break
	}
}
