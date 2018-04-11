/// @description Insert description here
// You can write your code in this editor

global.menu = 1
global.submenu = 0

room_speed = 60
depth = 500

//Create Landing Menu (1)
//Leads to all other main menus
ix = 10
iy = 150

createMenuButton(ix,iy,1,"Play",changeMenu,2)
iy += 20
createMenuButton(ix,iy,1,"Settings",changeMenu,3)
iy += 20
createMenuButton(ix,iy,1,"Graveyard",changeMenu,4)
iy += 20
createMenuButton(ix,iy,1,"Mods",changeMenu,5)
iy += 20
createMenuButton(ix,iy,1,"Mod Editor",changeRoom,rom_roseworks)
iy += 20
createMenuButton(ix,iy,1,"Quit",endGame,1)

//Create Play Menu (2)
//Select character and invocations
ix = 10
iy = 150

createMenuButton(ix,iy,2,"Enter the Castle",changeRoom,rom_run)
createMenuButton(ix,320,2,"Return",changeMenu,1)

//Create Settings Menu (3)
//Adjust Keybindings, framerate, controls, some visual effects and accesiblity options
ix = 10
iy = 150

createMenuButton(ix,iy,3,"Gameplay",changeSubmenu,2)
iy += 20
createMenuButton(ix,iy,3,"Keybinds",changeSubmenu,3)
iy += 20
createMenuButton(ix,iy,3,"Visuals",changeSubmenu,4)
iy += 20
createMenuButton(ix,iy,3,"Audio",changeSubmenu,5)
iy += 20
createMenuButton(ix,320,3,"Return",changeMenu,1)

//Create Graveyard Menu (4)
//See your best runs and some player stats
ix = 10
iy = 150

createMenuButton(ix,320,4,"Return",changeMenu,1)

//Create Mods Menu (5)
//Select which mods you want to play with
ix = 10
iy = 150

createMenuButton(ix,320,5,"Return",changeMenu,1)

//Settings 
i = instance_create_depth(150,25,10,obj_settingsMenu)
i.text = "Gameplay"
i.submenu = 2
i.y += 500

i = instance_create_depth(150,25,10,obj_settingsMenu)
i.text = "Keybinds"
i.submenu = 3
i.y += 500

i = instance_create_depth(150,25,10,obj_settingsMenu)
i.text = "Visuals"
i.submenu = 4
i.y += 500

i = instance_create_depth(150,25,10,obj_settingsMenu)
i.text = "Audio"
i.submenu = 5
i.y += 500