/// @description Insert description here
// You can write your code in this editor

global.showMenu = 0
global.menu = 0
global.submenu = 0

x -= 100
text = ""
ix = 0

//Main Settings
i = instance_create_depth(ix,-20,-50,obj_dropdownMenu)
i.text = "File"
i.icon = editicon_files

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 1
ii.host = i
ii.text = "Open"

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 2
ii.host = i
ii.text = "Save"

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 3
ii.host = i
ii.text = "Load"

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 4
ii.host = i
ii.text = "Main Menu"
ii.script = changeRoom
ii.modifier = rom_landingMenu

ix += 100

//Actors List
i = instance_create_depth(ix,-20,-50,obj_dropdownMenu)
i.text = "Actors"
i.icon = editicon_characters

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 1
ii.host = i
ii.text = "Characters"
ii.script = changeMenu
ii.modifier = 1

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 2
ii.host = i
ii.text = "Monsters"
ii.script = changeMenu
ii.modifier = 2

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 3
ii.host = i
ii.text = "Patterns"
ii.script = changeMenu
ii.modifier = 3

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 4
ii.host = i
ii.text = "Animations"
ii.script = changeMenu
ii.modifier = 4

ix += 100

//Castle List
i = instance_create_depth(ix,-20,-50,obj_dropdownMenu)
i.text = "Castle"
i.icon = editicon_rooms

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 1
ii.host = i
ii.text = "Sprawlers"
ii.script = changeMenu
ii.modifier = 5

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 2
ii.host = i
ii.text = "Doodads"
ii.script = changeMenu
ii.modifier = 6

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 3
ii.host = i
ii.text = "Haunts"
ii.script = changeMenu
ii.modifier = 7

ix += 100

//Stuff List
i = instance_create_depth(ix,-20,-50,obj_dropdownMenu)
i.text = "Stuff"
i.icon = editicon_characters

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 1
ii.host = i
ii.text = "Items"
ii.script = changeMenu
ii.modifier = 8

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 2
ii.host = i
ii.text = "Spells"
ii.script = changeMenu
ii.modifier = 9

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 3
ii.host = i
ii.text = "Traits"
ii.script = changeMenu
ii.modifier = 10