/// @description Insert description here
// You can write your code in this editor

global.showMenu = 0
global.menu = 0
global.submenu = 0

for(i = 1; i <= 10; i++)
{
	global.contentCount[i] = 0
}

x -= 100
text = ""
ix = 0

#region //Main Settings
i = instance_create_depth(ix,-20,-50,obj_dropdownMenu)
i.text = "File"
i.icon = editicon_files

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 1
ii.host = i
ii.text = "Open"
ii.icon = editicon_files

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 2
ii.host = i
ii.text = "Save"
ii.icon = editicon_files

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 3
ii.host = i
ii.text = "Load"
ii.icon = editicon_files

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 4
ii.host = i
ii.text = "Main Menu"
ii.script = changeRoom
ii.modifier = rom_landingMenu
ii.icon = editicon_files

ix += 100
#endregion

#region //Actors List
i = instance_create_depth(ix,-20,-50,obj_dropdownMenu)
i.text = "Actors"
i.icon = editicon_actors

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 1
ii.host = i
ii.text = "Characters"
ii.script = changeMenu
ii.modifier = 1
ii.icon = editicon_characters

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 2
ii.host = i
ii.text = "Monsters"
ii.script = changeMenu
ii.modifier = 2
ii.icon = editicon_monsters

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 3
ii.host = i
ii.text = "Patterns"
ii.script = changeMenu
ii.modifier = 3
ii.icon = editicon_patterns

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 4
ii.host = i
ii.text = "Animations"
ii.script = changeMenu
ii.modifier = 4
ii.icon = editicon_animations

ix += 100
#endregion

#region //Castle List
i = instance_create_depth(ix,-20,-50,obj_dropdownMenu)
i.text = "Castle"
i.icon = editicon_castle

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 1
ii.host = i
ii.text = "Sprawlers"
ii.script = changeMenu
ii.modifier = 5
ii.icon = editicon_rooms

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 2
ii.host = i
ii.text = "Doodads"
ii.script = changeMenu
ii.modifier = 6
ii.icon = editicon_doodads

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 3
ii.host = i
ii.text = "Haunts"
ii.script = changeMenu
ii.modifier = 7
ii.icon = editicon_haunts

ix += 100
#endregion

#region //Stuff List
i = instance_create_depth(ix,-20,-50,obj_dropdownMenu)
i.text = "Stuff"
i.icon = editicon_stuff

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 1
ii.host = i
ii.text = "Items"
ii.script = changeMenu
ii.modifier = 8
ii.icon = editicon_items

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 2
ii.host = i
ii.text = "Spells"
ii.script = changeMenu
ii.modifier = 9
ii.icon = editicon_spells

ii = instance_create_depth(ix,-20,-40,obj_dropdownOption)
ii.num = 3
ii.host = i
ii.text = "Traits"
ii.script = changeMenu
ii.modifier = 10
ii.icon = editicon_traits
#endregion

#region //Panels

#region //Content Panel
i = instance_create_depth(10,80,0,obj_contentPanel)

#endregion

#region //Edit Panel
i = instance_create_depth(220,80,0,obj_editPanel)

#endregion

#region //Preview Panel
i = instance_create_depth(430,80,0,obj_previewPanel)

ii = instance_create_depth(100,100,-5,obj_animPreview)
ii.host = i
#endregion

#endregion