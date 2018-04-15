/// @description Script for drawing and updating rebindable keys
/// @param {real} key
/// @param {real} howtouse

//1 establish, 2 click

switch(argument0)
{
case 0:if argument1 key = global.upKey else global.upKey = key break
case 1:if argument1 key = global.rightKey else global.rightKey = key break
case 2:if argument1 key = global.downKey else global.downKey = key break
case 3:if argument1 key = global.leftKey else global.leftKey = key break

case 4:if argument1 key = global.inventoryKey else global.inventoryKey = key break
case 5:if argument1 key = global.defendKey else global.defendKey = key break
case 6:if argument1 key = global.sneakKey else global.sneakKey = key break

case 7:if argument1 key = global.reloadKey else global.reloadKey = key break
case 8:if argument1 key = global.interactKey else global.interactKey = key break
case 9:if argument1 key = global.throwKey else global.throwKey = key break
case 10:if argument1 key = global.emptyKey else global.emptyKey = key break

case 11:if argument1 key = global.spellKey[1] 
else global.spellKey[1] = key break
case 12:if argument1 key = global.spellKey[2] 
else global.spellKey[2] = key break
case 13:if argument1 key = global.spellKey[3] 
else global.spellKey[3] = key break
case 14:if argument1 key = global.spellKey[4] 
else global.spellKey[4] = key break
case 15:if argument1 key = global.spellKey[5] 
else global.spellKey[5] = key break
}