/// @description Insert description here
// You can write your code in this editor

initializeSettings()
initializeMacros()

global.menu = 1
global.submenu = 1
global.descriptor = ""
global.showDescriptor = ""

room_speed = global.frameRate
depth = -500

x = room_width/2
y = room_height+10

#region //Create Landing Menu (1)
//Leads to all other main menus
ix = 10
iy = 150

createMenuButton(ix,iy,1,"Play",changeMenu,2,"Begin a run of Castle Cthulhu")
iy += 20
createMenuButton(ix,iy,1,"Settings",changeMenu,3,"Adjust game settings")
iy += 20
createMenuButton(ix,iy,1,"Graveyard",changeMenu,4,"Reflect on your best runs")
iy += 20
createMenuButton(ix,iy,1,"Mod Menu",changeMenu,5,"Select Mods to use")
iy += 20
createMenuButton(ix,iy,1,"Mod Editor",changeRoom,rom_roseworks,"Open the Roseworks Mod Editor")
iy += 20
createMenuButton(ix,iy,1,"Quit",endGame,1,"Exit the Program")
#endregion

#region //Create Play Menu (2)
//Select character and invocations
ix = 10
iy = 150

createMenuButton(ix,iy,2,"Enter the Castle",changeRoom,rom_run,"")
createMenuButton(ix,320,2,"Return",changeMenu,1,"")
#endregion

#region //Create Settings Menu (3)
//Adjust Keybindings, framerate, controls, some visual effects and accesiblity options
ix = 10
iy = 150

createMenuButton(ix,iy,3,"Gameplay",changeSubmenu,2,"Adjust accessiblity options")
iy += 20
createMenuButton(ix,iy,3,"Keybinds",changeSubmenu,3,"Rebind the controls")
iy += 20
createMenuButton(ix,iy,3,"Visuals",changeSubmenu,4,"Adjust graphics settings")
iy += 20
createMenuButton(ix,iy,3,"Audio",changeSubmenu,5,"Adjust audio settings")
iy += 20
createMenuButton(ix,320,3,"Return",changeMenu,1,"")
#endregion

#region //Create Graveyard Menu (4)
//See your best runs and some player stats
ix = 10
iy = 150

createMenuButton(ix,320,4,"Return",changeMenu,1,"")
#endregion

#region //Create Mods Menu (5)
//Select which mods you want to play with
ix = 10
iy = 150

initializeMods()

createMenuButton(ix,320,5,"Return",changeMenu,1,"")
#endregion

#region //Gameplay Options 
i = instance_create_depth(150,25,10,obj_settingsMenu)
i.text = "Gameplay"
i.submenu = 2
i.y += 500

iy = 40

ii = instance_create_depth(10,iy,5,obj_sliderControl)
ii.text = "Perfect Assist"
ii.host = i
ii.num = 5
ii.descriptor = "Increase leniance on perfectly timed attacks"
iy += 20

ii = instance_create_depth(10,iy,5,obj_sliderControl)
ii.text = "Dodge Assist"
ii.host = i
ii.num = 6
ii.descriptor = "Increase leniance on dodge invincibility time"
iy += 20

ii = instance_create_depth(10,iy,5,obj_sliderControl)
ii.text = "Light Assist"
ii.host = i
ii.num = 7
ii.descriptor = "Increased radius of light produced by light sources"

//Keybinds
i = instance_create_depth(150,25,10,obj_settingsMenu)
i.text = "Keybinds"
i.submenu = 3
i.y += 500

iy = 40

ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
ii.text = "Up"
ii.host = i
ii.num = 0
ii.descriptor = "Move Up"
iy += 20

ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
ii.text = "Right"
ii.host = i
ii.num = 1
ii.descriptor = "Move Right"
iy += 20

ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
ii.text = "Down"
ii.host = i
ii.num = 2
ii.descriptor = "Move Down"
iy += 20

ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
ii.text = "Left"
ii.host = i
ii.num = 3
ii.descriptor = "Move Left"
iy += 20

ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
ii.text = "Inventory"
ii.host = i
ii.num = 4
ii.descriptor = "Open your inventory"
iy += 20

ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
ii.text = "Defend"
ii.host = i
ii.num = 5
ii.descriptor = "Block and combine with movement to dodge"
iy += 20

ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
ii.text = "Sneak"
ii.host = i
ii.num = 6
ii.descriptor = "Toggle Sneaking"
iy += 20

ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
ii.text = "Reload"
ii.host = i
ii.num = 7
ii.descriptor = "Reload a crossbow or firearm"
iy += 20

ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
ii.text = "Interact"
ii.host = i
ii.num = 8
ii.descriptor = "Contextual interactions"
iy += 20

ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
ii.text = "Throw"
ii.host = i
ii.num = 9
ii.descriptor = "Held to throw equipped items"
iy += 20

ix = 200
iy = 40

ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
ii.text = "Quick 1"
ii.host = i
ii.num = 11
ii.descriptor = "Quick Slot 1"
iy += 20

ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
ii.text = "Quick 2"
ii.host = i
ii.num = 12
ii.descriptor = "Quick Slot 2"
iy += 20

ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
ii.text = "Quick 3"
ii.host = i
ii.num = 13
ii.descriptor = "Quick Slot 3"
iy += 20

ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
ii.text = "Quick 4"
ii.host = i
ii.num = 14
ii.descriptor = "Quick Slot 4"
iy += 20

ii = instance_create_depth(ix,iy,5,obj_rebindableKey)
ii.text = "Quick 5"
ii.host = i
ii.num = 15
ii.descriptor = "Quick Slot 5"
iy += 20

//Visual Options
i = instance_create_depth(150,25,10,obj_settingsMenu)
i.text = "Visuals"
i.submenu = 4
i.y += 500

iy = 40

ii = instance_create_depth(10,iy,5,obj_sliderControl)
ii.text = "Frame Rate"
ii.host = i
ii.num = 4
ii.descriptor = "Set the frame rate"
iy += 20

ii = instance_create_depth(10,iy,5,obj_sliderControl)
ii.text = "Effect Density"
ii.host = i
ii.num = 8
ii.descriptor = "% of particles made"
iy += 20

ii = instance_create_depth(10,iy,5,obj_settingsButton)
ii.text = "Reflections"
ii.host = i
ii.num = 0
ii.descriptor = "Toggles water reflections"

//Audio Options
i = instance_create_depth(150,25,10,obj_settingsMenu)
i.text = "Audio"
i.submenu = 5
i.y += 500

iy = 40

ii = instance_create_depth(10,iy,5,obj_sliderControl)
ii.text = "Master Volume"
ii.host = i
ii.num = 1
ii.descriptor = "Volume for all sound"
iy += 20

ii = instance_create_depth(10,iy,5,obj_sliderControl)
ii.text = "Effect Volume"
ii.host = i
ii.num = 0
ii.descriptor = "Volume of all active effects"
iy += 20

ii = instance_create_depth(10,iy,5,obj_sliderControl)
ii.text = "Music Volume"
ii.host = i
ii.num = 2
ii.descriptor = "Volume of music"
iy += 20

ii = instance_create_depth(10,iy,5,obj_sliderControl)
ii.text = "Ambience Volume"
ii.host = i
ii.num = 3
ii.descriptor = "Volume of all passive and atmospheric effects"
#endregion